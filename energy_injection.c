/******************************************************************************************************/
/*                           HYREC-2: Hydrogen and Helium Recombination Code                          */
/*                      Written by Yacine Ali-Haimoud and Chris Hirata (2010-17)                      */
/*                            with contributions from Nanoom Lee (2020)                               */
/*                                                                                                    */
/*     energy_injection.c: functions for the energy injection rate by various physical processes      */
/*                                                                                                    */
/******************************************************************************************************/

#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include "hyrectools.h"
#include "energy_injection.h"
// Rho_cr * c^2 /h^2, in eV/cm^3
#define Rhocr_C2_no_h2 1.054041699E4
#include "DarkSide/DarkSide.h"

// ALL dEdVdt are in ev/cm^3/s unit

double dEdVdt_decay_inj(double z, INJ_PARAMS *params)
{
  double Gamma, Omch2, r;
  Gamma = params->decay;
  Omch2 = params->odmh2;
  if (Gamma > 0)
  {
  r = Gamma * Omch2 * pow(1+z, 3.0)* Rhocr_C2_no_h2;
  }
  else
  {
    r=0.0;
  }
  return r;
}

double dEdVdt_decay_dep(double z, INJ_PARAMS *params, int dep_channel)
{
  double inj, r ,EFF, Mdm;
  int DM_Channel;
  DM_Channel = (int)round(params->DM_Channel);
  inj = dEdVdt_decay_inj(z, params);
  EFF = Interp_EFF_DM_Decay(params->Mdm, z, dep_channel, DM_Channel);
  // printf("z = %f, inj = %E, EFF = %f\n", z, inj, EFF);
  r = EFF*inj;
  return r;
}

double dEdVdt_deposited(double z, INJ_PARAMS *params, int dep_channel)
{
  /* Energy Deposition Rate in ev/cm^3/s
   -- inputs --
   dep_channel = 1: HIon
                 3: LyA
                 4: Heating
  */

  double r;

  // Check params
  if ((dep_channel == 2) || (dep_channel == 5))
  {
    fprintf(stderr, "HeIon and Continnum dep channels not allowed, exitting\n"); 
    exit(1);
  }

  r = dEdVdt_decay_dep(z, params, dep_channel);

  return r;
}

void Check_Error(double xe, double T)
{
  // Check for inifnity and NaN in Xe and T
  if (isfinite(xe) == 0)
  {
    printf("Error from Check_Error@HyRec: xe is NaN or infinite");
    exit(1);
  }
  if (isfinite(T) == 0)
  {
    printf("Error from Check_Error@HyRec: T is NaN or infinite");
    exit(1);
  }
}
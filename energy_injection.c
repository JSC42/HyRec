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

double dEdVdt_deposited(double z, INJ_PARAMS *params, int dep_channel)
{
  // Energy Deposition Rate in ev/cm^3/s
  // -- inputs --
  // dep_channel = 1: HIon
  //               3: LyA
  //               4: Heating

  // Check params
  if ((dep_channel == 2) || (dep_channel == 5))
  {
    fprintf(stderr, "HeIon and Continnum dep channels not allowed, exitting\n"); 
    exit(1);
  }
  return 0.0;
}


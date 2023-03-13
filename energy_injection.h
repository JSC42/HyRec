/* Structure with all energy injection parameters */
/* If adding a new energy injection process
   make sure to add relevant parameters here */

#ifndef __ENERGY_INJECTION__
#define __ENERGY_INJECTION__

typedef struct
{

  double odmh2; /* Omega_dm h^2 */
  
  double Mdm; // DM mass in GeV
  double pann;  /* DM annihilation parameter in the smooth background and in haloes */
                /* Units of pann are cm^3/s/GeV */
  double decay; // DM decay width in s^-1
  double Mpbh, fpbh; /* Mass and fraction of DM made of primordial black holes */

  double ion; // dEdVdt_HIon / nH / EI
  double exclya; // dEdVdt_LyA / nH / E21

  double DM_Channel;/* DM decay/annihilation channel
                    1 - Photon
                    2 - Electron
                    3 - Higgs
                    4 - Muon
                    5 - Tau
                    6 - Q
                    7 - CHarm
                    8 - Bottom
                    9 - Top
                    10 - W
                    11 - Z
                    12 - Gluon
                    */

} INJ_PARAMS;

double dEdVdt_deposited(double z, INJ_PARAMS *params, int dep_channel);
void Check_Error(double xe, double T);

#endif

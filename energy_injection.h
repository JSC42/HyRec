/* Structure with all energy injection parameters */
/* If adding a new energy injection process
   make sure to add relevant parameters here */

#ifndef __ENERGY_INJECTION__
#define __ENERGY_INJECTION__

typedef struct
{

  double odmh2; /* Omega_dm h^2 */

  double pann; /* DM annihilation parameter in the smooth background and in haloes */
                          /* Units of pann and are cm^3/s/GeV */

  double decay;

  double Mpbh, fpbh; /* Mass and fraction of DM made of primordial black holes */

  double ion, exclya;

} INJ_PARAMS;

#endif

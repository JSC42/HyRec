cd /Users/cangtao/IHEPBox/Projects/GitHub/HyRec/DarkSide_src

Input = 'EFF/Energy_1.txt'
Input = 'EFF/PBH_HIon_K1.txt'
Tab_Name = 'x_axis'

clc

OutFile = 'Tables.h';
delete(OutFile)
FileID=fopen(OutFile,'w');

% Define table sizes
fprintf(FileID,'#define Redshift_Size   63\n');
fprintf(FileID,'#define Electron_Mass_eV    510998.946\n');
fprintf(FileID,'#define Kinetic_Energy_Axis_Size	40\n');
fprintf(FileID,'#define Mdm_Axis_Size	62\n\n');

fclose(FileID);

% -- Redshift (1+z)

Input = 'EFF/Redshift_1.txt';
Tab_Name = 'Redshift_Axis';
Printer(Input, Tab_Name)

% -- Kinetic Energy

Input = 'EFF/Energy_1.txt';
Tab_Name = 'Kinetic_Energy_Axis';
Printer(Input, Tab_Name)

% -- SM Decay Mass Axis

Input = 'EFF/M_DEC_1.txt';
Tab_Name = 'Mdm_Axis_Decay';
Printer(Input, Tab_Name)

% -- SM Annihilation Mass Axis

Input = 'EFF/M_ANN_1.txt';
Tab_Name = 'Mdm_Axis_Annihilation';
Printer(Input, Tab_Name)

% -- Phot Ann ----

% HIon
Input = 'EFF/Phot_HIon_HMG.txt';
Tab_Name = 'EFF_Phot_HIon_Ann_HMG';
Printer(Input, Tab_Name)


% LyA
Input = 'EFF/Phot_LyA_HMG.txt';
Tab_Name = 'EFF_Phot_LyA_Ann_HMG';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Phot_Heat_HMG.txt';
Tab_Name = 'EFF_Phot_Heat_Ann_HMG';
Printer(Input, Tab_Name)

% -- Phot Decay ----

% HIon
Input = 'EFF/Phot_HIon_DECAY.txt';
Tab_Name = 'EFF_Phot_HIon_Decay';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Phot_LyA_DECAY.txt';
Tab_Name = 'EFF_Phot_LyA_Decay';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Phot_Heat_DECAY.txt';
Tab_Name = 'EFF_Phot_Heat_Decay';
Printer(Input, Tab_Name)

% -- Elec Ann ----

% HIon
Input = 'EFF/Elec_HIon_HMG.txt';
Tab_Name = 'EFF_Elec_HIon_Ann_HMG';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Elec_LyA_HMG.txt';
Tab_Name = 'EFF_Elec_LyA_Ann_HMG';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Elec_Heat_HMG.txt';
Tab_Name = 'EFF_Elec_Heat_Ann_HMG';
Printer(Input, Tab_Name)

% -- Elec Decay ----

% HIon
Input = 'EFF/Elec_HIon_DECAY.txt';
Tab_Name = 'EFF_Elec_HIon_Decay';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Elec_LyA_DECAY.txt';
Tab_Name = 'EFF_Elec_LyA_Decay';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Elec_Heat_DECAY.txt';
Tab_Name = 'EFF_Elec_Heat_Decay';
Printer(Input, Tab_Name)

% -- Higgs Ann ----

% HIon
Input = 'EFF/Higgs_HIon_HMG.txt';
Tab_Name = 'EFF_Higgs_HIon_Ann_HMG';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Higgs_LyA_HMG.txt';
Tab_Name = 'EFF_Higgs_LyA_Ann_HMG';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Higgs_Heat_HMG.txt';
Tab_Name = 'EFF_Higgs_Heat_Ann_HMG';
Printer(Input, Tab_Name)

% -- Higgs Decay ----

% HIon
Input = 'EFF/Higgs_HIon_DEC.txt';
Tab_Name = 'EFF_Higgs_HIon_Decay';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Higgs_LyA_DEC.txt';
Tab_Name = 'EFF_Higgs_LyA_Decay';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Higgs_Heat_DEC.txt';
Tab_Name = 'EFF_Higgs_Heat_Decay';
Printer(Input, Tab_Name)

% -- Muon Ann ----

% HIon
Input = 'EFF/Muon_HIon_HMG.txt';
Tab_Name = 'EFF_Muon_HIon_Ann_HMG';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Muon_LyA_HMG.txt';
Tab_Name = 'EFF_Muon_LyA_Ann_HMG';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Muon_Heat_HMG.txt';
Tab_Name = 'EFF_Muon_Heat_Ann_HMG';
Printer(Input, Tab_Name)

% -- Muon Decay ----

% HIon
Input = 'EFF/Muon_HIon_DEC.txt';
Tab_Name = 'EFF_Muon_HIon_Decay';
Printer(Input, Tab_Name)

% LyA
Input = 'EFF/Muon_LyA_DEC.txt';
Tab_Name = 'EFF_Muon_LyA_Decay';
Printer(Input, Tab_Name)

% Heat
Input = 'EFF/Muon_Heat_DEC.txt';
Tab_Name = 'EFF_Muon_Heat_Decay';
Printer(Input, Tab_Name)


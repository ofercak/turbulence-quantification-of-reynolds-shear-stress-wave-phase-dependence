# turbulence-quantification-of-reynolds-shear-stress-wave-phase-dependence
Experimental Particle Image Velocimetry (PIV) Data for Mouchref_2024

This repository is includes the full dataset used in 
"Quantification of Reynolds shear stress wave-phase dependence in
fixed-bottom offshore wind turbine via quadrant analysis"
by C. Mouchref, et al. 2024

The data files are Matlab, .m, files and grouped by wave phase.
The naming convention is:

Vxx_FRxxx_Px.mat where,

V is Velocity [Free Stream] x 10 in m/s
FR is Frequency [Water Wave] x 100 in Hz and,
P is the Phase Averaged Wave Crest Location (theta)

for example:
V25_FR125_P1.mat is the phase averaged data set for a
Velocity of 2.5 m/s Inflow
Wave Frequency of 1.25 Hz and
Wave Phase Postion of theta = 1

The experimental matrix is as follows:
Velocity: 2.5 m/s, 5.5 m/s
Wave Frequency: 0 Hz, 1.25 Hz, and 2.00 Hz
Phases: 1, 2, 3, 4

*Note: FR000_P0 means a No Wave condition


Data can be read using the [Read_Data.m] file included.
Each file contains the following quantities:

% AVAILABLE FIELD NAMES
% u     :Phase Averaged Streamwise Velocity                 [u]
% v     :Phase Averaged Wall-Normal Velocity                [v]
% uu    :Phase Averaged Reynolds Streamwise-Normal Stress   [uu]
% uv    :Phase Averaged Reynolds Shear Stress               [uv]
% vv    :Phase Averaged Reynolds Wall-Normal Stress         [vv]
% wake  :Turbine Wake Center Mean                           [Y/D]
% wave  :Wave Profile                                       [Y/D]

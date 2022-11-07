# Brain Functional Connectivity

% This function is to compute functional connectivity between two
% time-series signals, especially for the data without header files that
% are typically needed in Fieldtrip or SIFT in EEGLAB toolboxes.
% 
% Usage:
%   >> rel = Connectivity.PLV(x1, x2);
%
% Inputs:
%   x1  : signal #1 (must be a vector)
%   x2  : signal #2 (must be a vector)
%   Input arguments can't be matrix because matrix computation is not supported in hilbert(), a MATLAB internal Hilbert transform function. 
% 
% Example:
%   x1 = randn(100, 1);
%   x2 = randn(100, 1);
%   plv = Connectivity.PLV(x1, x2);
%   pli = Connectivity.PLI(x1, x2);
%   cohe = Connectivity.Cohe(x1, x2);
%   ImagC = Connectivity.ImagC(x1, x2);
% 
% Authors: Seonghun Park (Ph.D.) and Miseon Shim (Ph.D.)
% Intelligent Neuroengineering (i-neuro) Lab., Department of Electronic Engineering, Korea University
%
% Reference: Stam, C. J., Nolte, G., & Daffertshofer, A. (2007). Phase lag index: assessment of functional connectivity from multi channel EEG and MEG with diminished bias from common sources. Human brain mapping, 28(11), 1178-1193. 
% 
% Copyright (C) 2022 Seonghun Park (s.park7532@gmail.com) and Miseon Shim (shim.miseon@gmail.com)


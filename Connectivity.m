% This function is to compute functional connectivity between two
% time-series signals, especially for simple computation without requirement of header file
% (in contrast to, e.g., Fieldtrip or SIFT in EEGLAB toolboxes).
% 
% Usage:
%   >> rel = Connectivity.PLV(x1, x2);
%
% Inputs:
%   x1  : signal #1 (must be a vector)
%   x2  : signal #2 (must be a vector)
%   Input arguments can't be matrix because matrix computation is not supported in hilbert(). 
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
% References
% Stam, C. J., Nolte, G., & Daffertshofer, A. (2007). Phase lag index: assessment of functional connectivity from multi channel EEG and MEG with diminished bias from common sources. Human brain mapping, 28(11), 1178-1193.
% Bastos, A. M., & Schoffelen, J. M. (2016). A tutorial review of functional connectivity analysis methods and their interpretational pitfalls. Frontiers in systems neuroscience, 9, 175.
%
% Copyright (C) 2022 Seonghun Park (s.park7532@gmail.com) and Miseon Shim (shim.miseon@gmail.com)


classdef Connectivity
    methods(Static)
        % Phase locking value
        function output = PLV(x1, x2)
            phase_diff = angle(hilbert(x1).*conj(hilbert(x2)));
            output = abs(mean(exp(1i*phase_diff)));
        end

        % Phase lag index
        function output = PLI(x1, x2)
            phase_diff = angle(hilbert(x1).*conj(hilbert(x2)));
            output = abs(mean(sign(phase_diff)));
        end

        % Phase coherency
        function output = Cohy(x1, x2)
            y1 = hilbert(x1);
            y2 = hilbert(x2);
            num = mean(y1.*conj(y2));
            denom = sqrt(mean(abs(y1).^2)*mean(abs(y2).^2));
            output = num/denom;
        end

        % Phase coherence
        function output = Cohe(x1, x2)
            output = abs(Cohy(x1, x2));
        end
        
        % Imaginary part of Coherency
        function output = ImagC(x1, x2)
            y1 = hilbert(x1);
            y2 = hilbert(x2);
            num = mean(imag(y1.*conj(y2)));
            denom = sqrt(mean(abs(y1).^2)*mean(abs(y2).^2));
            output = num/denom;
        end

        function output = Granger(x1, x2)
            % planned to be added 
        end
    end
end

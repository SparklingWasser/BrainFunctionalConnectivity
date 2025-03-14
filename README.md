# Brain Functional Connectivity

This function is to compute functional connectivity between two
time-series signals, especially for simple computation without requirement of header file
(in contrast to, e.g., Fieldtrip or SIFT in EEGLAB toolboxes).

Usage:
  >> rel = Connectivity.PLV(x1, x2);

Inputs:<br/>
	x1  : signal #1 (must be a vector)<br/>
	x2  : signal #2 (must be a vector)<br/>
  Input arguments can't be matrix because matrix computation is not supported in hilbert(). 

Example:<br/>
   >> x1 = randn(100, 1);<br/>
   >> x2 = randn(100, 1);<br/>
   >> plv = Connectivity.PLV(x1, x2);<br/>
   >>  pli = Connectivity.PLI(x1, x2);<br/>
   >>  cohe = Connectivity.Cohe(x1, x2);<br/>
   >> ImagC = Connectivity.ImagC(x1, x2);<br/>

Authors: Seonghun Park (Ph.D.) and Miseon Shim (Ph.D.)<br/>
Intelligent Neuroengineering (i-neuro) Lab., Department of Electronic Engineering, Korea University <br/>  <br/>
Copyright (C) 2022 Seonghun Park (s.park7532@gmail.com) and Miseon Shim (shim.miseon@gmail.com)

# References <br/>
1. Stam, C. J., Nolte, G., & Daffertshofer, A. (2007). Phase lag index: assessment of functional connectivity from multi channel EEG and MEG with diminished bias from common sources. Human brain mapping, 28(11), 1178-1193. <br/>
2. Bastos, A. M., & Schoffelen, J. M. (2016). A tutorial review of functional connectivity analysis methods and their interpretational pitfalls. Frontiers in systems neuroscience, 9, 175.


function [magnitude, phase] = fourierSeries(x)
% FOURIERSERIES 
%
%   [magnitude, phase, frequency] = fourierSeries(x,Fs)
%
% Return the magnitude and phase of each sinusoidal component in the Fourier 
% series expansion for  the argument, which is interpreted as one cycle of a  periodic signal. 
% The argument is assumed to have an even number p of samples. The first returned value is an
% array containing the amplitudes of the sinusoidal  components in the Fourier series expansion, with
% frequencies 0, 1/p, 2/p, ... 1/2. The second returned value is an array of phases for the sinusoidal
% components. Both returned values are arrays with length (p/2)+1.
% The frequency vector is given by 


p = length(x);
f = fft(x)/p;

upper = p/2;

magnitude(1) = abs(f(1));
magnitude(2:upper) = 2*abs(f(2:upper));
magnitude(upper+1) = abs(f(upper+1));

phase(1) = angle(f(1));
phase(2:upper) = angle(f(2:upper));
phase(upper+1) = angle(f(upper+1));
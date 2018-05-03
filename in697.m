function[out697] = in697(y, fs)
% desired frequency
freq697 = 697;

% setting b697 filter variable. the pass range is +/- 20 of the desired 
    % frequency (margin of error for recording distortion) and divided 
    % by fs/2 in order to normalize it for the filter function.
b697 = fir1(61, [(freq697-20)/(fs/2), (freq697+20)/(fs/2)], 'bandpass');

% applying the b697 filter value to r697 with a = 1 (constant) and original 
    % y data values.
r697 = filter(b697, 1, y);

% converting normalised values back into frequency values
t697 = r697 * (fs/2);

% applying fast fourier transform to t697
X697 = fft(t697);

% converting X697 to absolute rounded values
X697_mag = round(abs(X697));

% assinging peak frequency value of X697_mag to y697.
[x697, y697] = max(X697_mag);

% assinging peak y697 value to the final output of the filter function
out697 = y697;
end
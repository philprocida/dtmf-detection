function [out852] = in852(y, fs)
freq852 = 852;
b852 = fir1(61, [(freq852-20)/(fs/2), (freq852+20)/(fs/2)], 'bandpass');
r852 = filter(b852, 1, y);
t852 = r852*(fs/2);
X852 = fft(t852);
X852_mag = round(abs(X852));
[x852, y852] = max(X852_mag);
out852 = y852;
end
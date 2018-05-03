function [out1336] = in1336(y, fs)
freq1336 = 1336;
b1336 = fir1(61, [(freq1336-20)/(fs/2), (freq1336+20)/(fs/2)], 'bandpass');
r1336 = filter(b1336, 1, y);
t1336 = r1336*(fs/2);
X1336 = fft(t1336);
X1336_mag = round(abs(X1336));
[x1336, y1336] = max(X1336_mag);
out1336 = y1336;
end
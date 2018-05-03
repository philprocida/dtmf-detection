function [out1477] = in1477(y, fs)
freq1477 = 1477;
b1477 = fir1(61, [(freq1477-20)/(fs/2), (freq1477+20)/(fs/2)], 'bandpass');
r1477 = filter(b1477, 1, y);
t1477 = r1477*(fs/2);
X1477 = fft(t1477);
X1477_mag = round(abs(X1477));
[x1477, y1477] = max(X1477_mag);
out1477 = y1477;
end
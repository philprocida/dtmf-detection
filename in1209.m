function [out1209] = in1209(y, fs)
freq1209 = 1209;
b1209 = fir1(61, [(freq1209-20)/(fs/2), (freq1209+20)/(fs/2)], 'bandpass');
r1209 = filter(b1209, 1, y);
t1209 = r1209*(fs/2);
X1209 = fft(t1209);
X1209_mag = round(abs(X1209));
[x1209, y1209] = max(X1209_mag);
out1209 = y1209;
end
function [out941] = in941(y, fs)
freq941 = 941;
b941 = fir1(61, [(freq941-20)/(fs/2), (freq941+20)/(fs/2)], 'bandpass');
r941 = filter(b941, 1, y);
t941 = r941*(fs/2);
X941 = fft(t941);
X941_mag = round(abs(X941));
[x941, y941] = max(X941_mag);
out941 = y941;
end
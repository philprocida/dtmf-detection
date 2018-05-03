function [out770] = in770(y, fs)
freq770 = 770;
b770 = fir1(61, [(freq770-20)/(fs/2), (freq770+20)/(fs/2)], 'bandpass');
r770 = filter(b770, 1, y);
t770 = r770*(fs/2);
X770 = fft(t770);
X770_mag = round(abs(X770));
[x770, y770] = max(X770_mag);
out770 = y770;
end
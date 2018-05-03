function dtmf_decoder(userInput)
clc;
close all;

load(userInput);

% Filter catalog calls on lines 9 thru 15.
% in697.m provides details on the format/function of all the filters.
s697 = in697(y, fs); % 697 Hz filter
s770 = in770(y, fs); % 770 Hz filter
s852 = in852(y, fs); % 852 Hz filter
s941 = in941(y, fs); % 941 Hz filter
s1209 = in1209(y, fs); % 1209 Hz filter
s1336 = in1336(y, fs); % 1336 Hz filter
s1477 = in1477(y, fs); % 1477 Hz filter

% Implementing a range for each frequency in order to account for margin of error when
    % analysing signals that my be distorted from external recording.

    % DTMF signals within the 1209 column
if (s1209 >= 1200 && s1209 <= 1300)
    if (s697 >= 600 && s697 <= 700) % 1209Hz + 697Hz = Tone 1
        fprintf('DTMF input is 1\n');
    elseif (s770 >= 700 && s770 <= 800) % 1209Hz + 770Hz = Tone 4
        fprintf('DTMF input is 4\n');
    elseif (s852 >= 800 && s852 <= 900) % 1209Hz + 852Hz = Tone 7
        fprintf('DTMF input is 7\n');
    end
    % DTMF signals within the 1336 column
elseif (s1336 >= 1300 && s1336 <= 1450)
    if (s697 >= 600 && s697 <= 700) % 1336Hz + 697Hz = Tone 2
        fprintf('DTMF input is 2\n');
    elseif (s770 >= 700 && s770 <= 800) % 1336Hz + 770Hz = Tone 5
        fprintf('DTMF input is 5\n');
    elseif (s852 >= 800 && s852 <= 900) % 1336Hz + 852Hz = Tone 8
        fprintf('DTMF input is 8\n');
    elseif (s941 >= 900 && s941 <= 1000) % 1336Hz + 941Hz = Tone 0
        fprintf('DTMF input is 0\n');
    end
    % DTMF signals within the 1477 column
elseif (s1477 >= 1400 && s1477 <= 1500)
     if (s697 >= 600 && s697 <= 700) % 1447Hz + 697Hz = Tone 3
        fprintf('DTMF input is 3\n');
    elseif (s770 >= 700 && s770 <= 800) % 1447Hz + 770Hz = Tone 6
        fprintf('DTMF input is 6\n');
    elseif (s852 >= 800 && s852 <= 900) % 1447Hz + 852Hz = Tone 9
        fprintf('DTMF input is 9\n');
    end
end
end
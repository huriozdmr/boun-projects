clear; clc;

data = audioread('PinkPanther30.wav');
nofilter = findpeaks(data);

cutoff_Freq = [0, 1000, 2000, 3000, 4000];
cutoff_N = length(cutoff_Freq);
peaks_LowPass = zeros(1,cutoff_N);

% Add no filter result to first index
peaks_LowPass(1) = length(nofilter);

for i = 2:cutoff_N
    % Design low pass filter
    LP_filter = designfilt('lowpassiir', ...
             'FilterOrder',8, ...
             'PassbandFrequency', cutoff_Freq(i), ...
             'PassbandRipple',0.3, ...
             'SampleRate', 100e3);
         
    % Apply low pass filter
    result = filter(LP_filter,data);
    
    % Find peaks
    peaks = findpeaks(result);
    
    % Save number of peaks
    peaks_LowPass(i) = length(peaks);
end

% Plot result of part 1
figure;
plot(cutoff_Freq, peaks_LowPass); title('Number of Peaks vs Changing Cut-Off Frequencies');
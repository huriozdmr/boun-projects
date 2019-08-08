clear; clc;

data = csvread('exampleSignal.csv');
% Remove first row of the read data 
 Fs = data(1,1);

% Find nofilter peaks 
nofilter = findpeaks(data, 'MinPeakProminence', 0.6, 'MinPeakDistance', 200, 'MinPeakHeight', 3.5, 'MinPeakWidth', 100);


% MOVING AVERAGE FILTERING
Sample_Maf = [0' 2:30];
NSample_Maf = length(Sample_Maf);
NPeaks_Maf = zeros(1,NSample_Maf);
% Add no filter result to first index
NPeaks_Maf(1) = length(nofilter);

for i = 2:NSample_Maf
    % Design moving average filter
    mf_filter = 1/i * ones(i,1);
    
    % Apply MAF
    mf_result = filter(mf_filter,1,data);
    
    % Find peaks
    peaks = findpeaks(mf_result, 'MinPeakProminence', 0.6, 'MinPeakDistance', 200);
    
    % Save number of peaks
    NPeaks_Maf(i) = length(peaks);
end

% Plot the result
figure;
plot(Sample_Maf, NPeaks_Maf); title('Peak numbers VS N');

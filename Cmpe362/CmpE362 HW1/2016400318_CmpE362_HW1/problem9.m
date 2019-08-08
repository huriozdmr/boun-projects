% Reads the data from the csv file and skips the first 3 elements
M =csvread('exampleSignal.csv',4,0);

% Sets the time domain 
t =(1:49498);

%Finds all the peaks from the csv file
[peaks ,l]= findpeaks(M);

%Plots and marks detected peaks
plot(t,M,t(l),peaks,'or'); 
%Load Files
[wav,Fs] = audioread('mike.wav');

%% Problem 1

 Z= zeros(9,2);
for a=0.1:0.1:0.9
    y = ntap(wav,Fs,50,a,500);
    Z(uint8(a*10),1) = a;
    Z(uint8(a*10),2) = snr(wav,y);
end

figure('Name','Problem 1');
subplot(3,1,1)
plot(Z(:,1),Z(:,2))
title('Constant N and K')
xlabel('Alpha')
ylabel('SNR(dB)')


%% Problem 2

Z_2 = zeros(50,2);
for N=1:50
    y = ntap(wav,Fs,N,0.8,100);
    Z_2(uint8(N),1) = N;
    Z_2(uint8(N),2) = snr(wav,y);
end

subplot(3,1,2)
plot(Z_2(:,1),Z_2(:,2))
title('Constant Alpha and K ')
xlabel('N')
ylabel('SNR(dB)')


%% Problem3

Z_3 = zeros(4,2);
for K=100:100:400
    y = ntap(wav,Fs,40,0.3,K);
    Z_3(uint8(K/100),1) = K;
    Z_3(uint8(K/100),2) = snr(wav,y);
end

subplot(3,1,3)
plot(Z_3(:,1),Z_3(:,2))
title('Constant N and Alpha ')
xlabel('K')
ylabel('SNR(dB)')

%%%%%%%%%%%%%%%%%% Define Functions %%%%%%%%%%%%%%%%

function y = ntap(wav,Fs,N,a,K)

if nargin < 5
    K = 100;
end

for i=1:N
   
   if mod(i,2) == 0
      a = power(a,i);
   else
      a = -(a^i);
   end
   
   
   wav = [wav;zeros(K*0.001*Fs,1)] + mul(delay(wav,K,Fs),a);
   
end

y = wav;

end

function y = mul(x,a)
    y = x.*a;
end

function result = snr(x,y)

    x = [x;zeros(size(y,1)-size(x,1),1)];

    x2 = x.^2;
    xy2 = (y-x).^2;
    up = sum(x2);
    down = sum(xy2);
    result = 10*log(up/down)/log(10);

end
function y = delay(x, K, Fs)

    y = [ zeros(K*0.001*Fs,1) ; x ];

end

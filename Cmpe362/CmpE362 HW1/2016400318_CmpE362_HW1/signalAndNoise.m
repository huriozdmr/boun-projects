%Problem 1
%Creates x vector of real numbers (-100:100) 
x= -100:100;
y1= sin(x);
y2= sin(50.*x);
y3= 50.*sin(x);
y4= sin(x)+50;
y5= sin(x+50); 
y6= 50.*sin(50.*x);
y7= x.*sin(x);
y8= sin(x)./x;

% Plots and subplots(4x2) to fit all subfigures to a single figure
subplot(421), plot(x,y1);
subplot(422), plot(x,y2);
subplot(423), plot(x,y3);
subplot(424), plot(x,y4);
subplot(425), plot(x,y5);
subplot(426), plot(x,y6);
subplot(427), plot(x,y7);
subplot(428), plot(x,y8);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2
% Creates x vector of real numbers (-20:20)
x = -20:20;
y1 = sin(x);
y2=sin(50*x);
y3=50.*sin(x);
y4= sin(x)+50;
y5= sin(x+50);
y6= 50.*sin(50*x);
y7= x.*sin(x);
y8=sin(x)./x;
y9= y1+y2+y3+y4+y5+y6+y7+y8;

% Plots and subplots(5x2) to fit all subfigures to a single figure
subplot(521), plot(x,y1);
subplot(522), plot(x,y2);
subplot(523), plot(x,y3);
subplot(524), plot(x,y4);
subplot(525), plot(x,y5);
subplot(526), plot(x,y6);
subplot(527), plot(x,y7);
subplot(528), plot(x,y8);
subplot(529), plot(x,y9);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 3 
x = -20:20;
%Generates 41 random numbers using Gaussian distributed number
z = randn(1,41);

y10= z; 
y11= z+x; 
y12= z+sin(x); 
y13= z.*sin(x);
y14=x.*sin(z);
y15= sin(x+z);
y16= z.*sin(50*x);
y17=sin(x+50*z);
y18=sin(x)./z;
y19= y11+y12+y13+y14+y15+y16+y17+y18;

% Plots and subplots(5x2) to fit all subfigures to a single figure
subplot(521), plot(x,y10);
subplot(522), plot(x,y11);
subplot(523), plot(x,y12);
subplot(524), plot(x,y13);
subplot(525), plot(x,y14);
subplot(526), plot(x,y15);
subplot(527), plot(x,y16);
subplot(528), plot(x,y17);
subplot(529), plot(x,y18);
subplot(5,2,10), plot(x,y19);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 4
x = -20:20;
% Generates 41 uniformly distributed numbers
z = rand(1,41);

y20= z;
y21= z+x;
y22= z+sin(x) ;
y23= z.*sin(x) ; 
y24= x.*sin(z) ;
y25= sin(x+z);
y26= z.*sin(50*x);
y27= sin(x+50*z);
y28= sin(x)./z ;
y29= y21+y22+y23+y24+y25+y26+y27+y28;

% Plots and subplots(5x2) to fit all subfigures to a single figure
subplot(5,2,1), plot(x, y20);
subplot(5,2,2), plot(x, y21);
subplot(5,2,3), plot(x, y22);
subplot(5,2,4), plot(x, y23);
subplot(5,2,5), plot(x, y24);
subplot(5,2,6), plot(x, y25);
subplot(5,2,7), plot(x, y26);
subplot(5,2,8), plot(x, y27);
subplot(5,2,9), plot(x, y28);
subplot (5,2,10) , plot (x, y29); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 5

% Generates 10000 Gaussian random number variables
z = randn(1,10000);

%Generates 10000 random numbers by
%creating vectors that means are zero and variances are 1,4,16,256
r1 = 0 + sqrt(1) .* z;
r2 = 0 + sqrt(4) .* z;
r3 = 0 + sqrt(16) .* z;
r4 = 0 + sqrt(256) .* z;

% Subplots(2x2) and plots to create histograms
subplot(2,2,1), hist(r1);
subplot(2,2,2), hist(r2);
subplot(2,2,3), hist(r3);
subplot(2,2,4), hist(r4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 6 

% Generates 10000 Gaussian random number variables
z = randn(1,10000);

%Generates 10000 random numbers by 
%creating vectors that means are 10,20,-10,-20 
%and variances are 1,4,1,4
r6 = 10 + sqrt(1) .* z;
r7 = 20 + sqrt(4) .* z;
r8 = -10 + sqrt(1) .* z;
r9 = -20 + sqrt(4) .* z;

% Subplots(2x2) and plots to create histograms 
subplot(2,2,1), hist(r6); 
subplot(2,2,2), hist(r7); 
subplot(2,2,3), hist(r8);
subplot(2,2,4), hist(r9);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 7

% Generates 10000 uniformly distributed random number variables
z = rand(1,10000);

%Generates 10000 random numbers by 
%creating vectors that means are zero and variances are 1,4,16,256
r11 = 0 + sqrt(1) .* z;
r21 = 0 + sqrt(4) .* z;
r31 = 0 + sqrt(16) .* z;
r41 = 0 + sqrt(256) .* z;

% Subplots(2x2) and plots to create histograms 
subplot(2,2,1), hist(r11);
subplot(2,2,2), hist(r21);
subplot(2,2,3), hist(r31);
subplot(2,2,4), hist(r41);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 8

% Generates 10000 uniformly distributed random number variables
z = rand(1, 10000);

%Generates 10000 random numbers by 
%creating vectors that means are 10,20,-10,-20
%and variances are 1,4,1,4

r61 = 10 + sqrt(1) .* z;
r71 = 20 + sqrt(4) .* z;
r81 = -10 + sqrt(1) .* z;
r91 = -20 + sqrt(4) .* z;

% Subplots(2x2) and plots to create histograms 
subplot(2,2,1), hist(r61);
subplot(2,2,2), hist(r71);
subplot(2,2,3), hist(r81);
subplot(2,2,4), hist(r91);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% Reads image 'lena.png' with imread
A = imread("lena.png")
%Converts rgb to gray
I = rgb2gray(A);
imshow(I)

%Calculates mean, standard deviation and displays them
mean_val = mean2(I)
std_val= std2(I)

% Calculates the maximum and its location
maxval= max(max(I(:)))
[max_row, max_col] = find(ismember(I, max(I(:))))

% Calculates the minimum and its location
minval= min(min(I(:)))
[min_row, min_col] = find(ismember(I, min(I(:))))



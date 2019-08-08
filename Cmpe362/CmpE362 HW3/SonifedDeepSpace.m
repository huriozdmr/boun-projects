img=imread("Hubble-Massive-Panorama.png");
I = rgb2gray(img);

% create binary image to set all values 0 and 1 
binary_img = imbinarize(I);

% create zero array to combine generated wavs 
wavs = zeros(1024,1024);

for i = 1 : 1024
    for j=1:900
        if binary_img(j,i)
            % Set amplitude ranks from 10 to 1
            amp = 10 -(j/90);
            % Fs number rank from 0 to 1
            t = linspace(0, 1, 1024);
            y= amp*sin(2*pi*j*t);
            % Add waves to wavs matrix 
            wavs(i,:)=wavs(i,:) + y;
        else 
            amp=0;
            t = linspace(0, 1, 1024);
            y= amp*sin(2*pi*j*t);
            wavs(i,:)=wavs(i,:) + y;
        end
    end
end

% combine waves and create a sound 
C = transpose(wavs);
sound(C(:),1024)
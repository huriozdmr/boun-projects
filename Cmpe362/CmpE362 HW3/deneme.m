img=im2double(imread('Hubble-Massive-Panorama.png'));
I= rgb2gray(img);

C = mat2cell(img,[90 90 90 90 90 90 90 90 90 90],1024,3);

Fs = 22050;                  % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds

sounds = zeros(1024,2000);

for i=10:1
    cell = C{i};
    for ii=1:size(cell,1)
        for jj=1:size(cell,2)
            % get pixel value
            pixel=cell(ii,jj);
            
            if pixel == 0
                amp=0;
                y =amp*sin(2*pi*jj*t); 
                sounds(ii,:)=sounds(ii,:) + y;
                
            else
                amp=10;
                y =amp*sin(2*pi*jj*t);   
                sounds(ii,:)=sounds(ii,:) + y;

            end    
        end
    end
end


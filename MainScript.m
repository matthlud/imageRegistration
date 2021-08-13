% Image Feature Extraction
%https://de.mathworks.com/help/vision/ug/object-detection-in-a-cluttered-scene-using-point-feature-matching.html
close all;clear;

%User input (Path to images location):
location = '.\Images';
imds = imageDatastore(location);

noImages = length(imds.Files);

for i=1:(noImages-1)
    MovedImage = fReadImages(imds.Files(noImages),imds.Files(i));
    [~,name,~] = fileparts(imds.Files{i,1});
    imwrite(MovedImage,strcat(name,'.png'));
    MovedImage = imcrop(MovedImage,[80 80 800 1100]);
end

% TODO: Last frame should not be discarded
% imwrite(imds.Files(noImages),strcat(int2str(imds.Files(noImages)),'.png'));
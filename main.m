% Image Feature Extraction
% https://de.mathworks.com/help/vision/ug/object-detection-in-a-cluttered-scene-using-point-feature-matching.html
close all;clear;

% User input (Path to images location):
location = '.\images';
imds = imageDatastore(location);

number_of_images = length(imds.Files);

for i=1:(number_of_images-1)
    moved_image = f_read_images(imds.Files(number_of_images), imds.Files(i));
    [~,name,~] = fileparts(imds.Files{i,1});
    if ~exist("result", "dir")
        mkdir("result");
    end
    imwrite(moved_image,strcat('result\', name, '.png'));
    moved_image = imcrop(moved_image,[80 80 800 1100]);
end

% TODO: Last frame should not be discarded
% imwrite(imds.Files(number_of_images),strcat(int2str(imds.Files(number_of_images)),'.png'));

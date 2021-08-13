function MovedImage_Orig = fReadImages(FixedImg_Orig,MovingImg_Orig)
%fReadImages Summary of this function goes here
%   Detailed explanation goes here

FixedImg_Orig = imread(FixedImg_Orig{1,1});
MovingImg_Orig = imread(MovingImg_Orig{1,1});

FixedImg_Orig = imresize(FixedImg_Orig, [868 1165]);
FixedImg = rgb2gray(FixedImg_Orig);

MovingImg_Orig = imresize(MovingImg_Orig, [868 1165]);
MovingImg = rgb2gray(MovingImg_Orig);

[MOVINGREG] = fRegisterImages(MovingImg,FixedImg);

fixed = imref2d(MOVINGREG.SpatialRefObj.ImageSize);
MovedImage_Orig = imwarp(MovingImg_Orig,MOVINGREG.Transformation,'OutputView',fixed);

figure
montage({FixedImg_Orig, MovedImage_Orig});

end


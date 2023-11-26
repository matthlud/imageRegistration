function moved_image_original = f_read_images(fixed_image_original,moving_image_original)
%f_read_images Summary of this function goes here
%   Detailed explanation goes here

fixed_image_original = imread(fixed_image_original{1,1});
moving_image_original = imread(moving_image_original{1,1});

fixed_image_original = imresize(fixed_image_original, [868 1165]);
fixed_image = rgb2gray(fixed_image_original);

moving_image_original = imresize(moving_image_original, [868 1165]);
moving_image = rgb2gray(moving_image_original);

[MOVINGREG] = f_register_images(moving_image,fixed_image);

fixed = imref2d(MOVINGREG.SpatialRefObj.ImageSize);
moved_image_original = imwarp(moving_image_original,MOVINGREG.Transformation,'OutputView',fixed);

figure
montage({fixed_image_original, moved_image_original});

end

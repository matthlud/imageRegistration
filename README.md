# Problem Statement
 
Handheld images are generally not sufficiently aligned, so that they are suited for timelapse videos.
There will be visible distortion regarding scaling, translation, rotation, tilting, or others.
The script provided, gives users the convencience to just choose a the image path and registers all images automatically.

# 1. Requirements

To run the script, at least Matlab R2020b is necessary. 
https://de.mathworks.com/products/matlab/student.html

Additionally, the Computer Vision (CV) toolbox is required.
https://de.mathworks.com/products/computer-vision.html

# 2. Technical Background

An example of an image registration is shown here:
https://de.mathworks.com/help/vision/ug/object-detection-in-a-cluttered-scene-using-point-feature-matching.html

The enclosed example in this repo is illustrated below.
The two original image show a slight misalignment.
![docu1](/docu/BeforeRegistration.PNG)

From two handheld photos the image registration is done via feature extraction via the SURF-algorithm (https://people.ee.ethz.ch/~surf/eccv06.pdf).

<img src="/docu/RegisteredFeatures.png" width="505">

The final registration of this example is shown in the montage:
![docu2](/docu/AfterRegistration.PNG)

Further information on how to use image registration and the theoretical background can be found here:
https://de.mathworks.com/discovery/image-registration.html

https://de.mathworks.com/help/images/register-images-using-the-registration-estimator-app.html

https://de.mathworks.com/help/images/techniques-supported-by-registration-estimator-app.html

# 3. Usage

Clone the repository:
```git clone https://github.com/matthlud/imageRegistration.git´´´

The only user input is required in _main.m_.
Please proivde the absolute file path in _Line 6:_ and change the variable _location = ''_ to the full absolute path which contains all images.

# 4. Creating a Timelapse Movie

After registration of the frame, an easy way to create a movie can be done through this UI:

Image Analyst (2021). MakeMovie (https://www.mathworks.com/matlabcentral/fileexchange/67974-makemovie), MATLAB Central File Exchange. Retrieved August 13, 2021. 

# TODO

* Copy fixed image automatically
* Let user decide final image resolution

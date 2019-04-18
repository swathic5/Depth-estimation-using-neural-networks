This project is an extended version of Fayao Liu's published work - https://bitbucket.org/fayao/dcnf-fcsp (https://arxiv.org/pdf/1502.07411.pdf)
I am citing their work. On top of their work, I have  built a GUI using Matlab guide to better show the results. I have also extended the test samples to use more images from datasets.

Please download trained model files from - https://drive.google.com/drive/folders/1pgLLw2o2vuZo3zMdCSbRAmLT6Pu3hvyu?usp=sharing

Dependencies:
Matlab 2019 version
A machine with GPU available
Cuda 10
GCC 6.3x

VLFeat MatConvNet library is used to build the network. The library is compiled with above dependencies, so if you are running with anything different, be sure to recompile it using the information at http://www.vlfeat.org/matconvnet/install/#compiling

Run:
1. To run the gui, run the main\_gui.m function. 
2. When the GUI opens, select the environment of your image(indoor or outdoor). 
3. Next select an image index (1-9) and hit the predict function. The network predicts the depth of an image and displays the actual image, true depths and predicted depths along with the Mean Squared Error of predicted depths with actual depths. (You can change the environment and image index to predict for different images)
4. To use your own image, replace one of the image in custom\_indoor\_sample or custom\_outdoor\_sample based on its environment (Make sure the image is RGB with dimensions 480\*640 and follow the usual steps to predict depth)
The program should take less than a minute to predict depths when run using GPU.

Video demo:
https://www.youtube.com/watch?v=YO5Zcw_0VP8





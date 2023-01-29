#include <iostream>
#include <opencv2/opencv.hpp>


const std::string imageDir = "C:/Users/itber/Documents/learning"
                             "/self_tutorials/learning_opencv/data/images"; 

int main(int argc, char** argv) {
    
    std::string imagePath;
    if (argc > 1)
        imagePath = argv[1];
    else
        imagePath = imageDir + "/moose.jpg";


    cv::Mat img = cv::imread(imagePath);

    int x {16}, y {32};
    cv::Vec3b intensity = img.at<cv::Vec3b>(y, x);

    uchar blue {intensity[0]};
    uchar green {intensity[1]};
    uchar red {intensity[2]};

    std::cout << "At: " << x << " " << y << " the intesity is"
              << "(blue , green, red): ( " 
              << (unsigned int) blue << ", "
              << (unsigned int) green << ", "
              << (unsigned int) red  << " )"
              << std::endl;


    return 0;
}

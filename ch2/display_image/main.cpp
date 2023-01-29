/*
    Program to displat an imaage
    To execute program:
        .\display_image.exe C:/Users/itber/Documents/learning/self_tutorials/learning_opencv/data/images/bike55.bmp
*/

#include <iostream>
#include <string>
#include <opencv2/opencv.hpp>

const std::string imageDir = "C:/Users/itber/Documents/learning"
                             "/self_tutorials/learning_opencv/data/images"; 

int main(int argc, char** argv) {
    
    std::string imagePath;
    if (argc > 1)
        imagePath = argv[1];
    else
        imagePath = imageDir + "/moose.jpg";

    cv::Mat img = cv::imread(imagePath, -1);
    if (img.empty()) {
        std:: cout << "Error! Could not read image" << std::endl;
        return -1;
    }
    cv::namedWindow("Example 2-1");
    cv::imshow("Example 2-1", img);
    cv::waitKey(0);
    cv::destroyWindow("Example 2-1"); // ensure memory is released

    return 0;

}

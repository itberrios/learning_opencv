#include <iostream>
#include <opencv2/opencv.hpp>



const std::string imageDir = "C:/Users/itber/Documents/learning"
                             "/self_tutorials/learning_opencv/data/images"; 
int main(int argc, char** argv) {

    // get image path
    std::string imagePath;
    if (argc > 1)
        imagePath = argv[1];
    else
        imagePath = imageDir + "/moose.jpg";

    // read in image
    cv::Mat image = cv::imread(imagePath, -1);

    // create windows for display
    cv::namedWindow("Image", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Smoothed Image", cv::WINDOW_AUTOSIZE);

    cv::imshow("Image", image);

    // apply Gaussian Kernel to smooth the image
    cv::Mat smoothedImage;
    cv::GaussianBlur(image, smoothedImage, cv::Size(5,5), 3, 3);
    cv::GaussianBlur(smoothedImage, smoothedImage, cv::Size(5,5), 3, 3);

    cv::imshow("Smoothed Image", smoothedImage);


    cv::waitKey(0);
    cv::destroyAllWindows();

}

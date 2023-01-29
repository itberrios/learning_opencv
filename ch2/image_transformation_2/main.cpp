#include <iostream>
#include <opencv2/opencv.hpp>


const std::string imageDir = "C:/Users/itber/Documents/learning"
                             "/self_tutorials/learning_opencv/data/images"; 


int main(int argc, char **argv) {
    std::string imagePath;
    if (argc > 1)
        imagePath = argv[1];
    else
        imagePath = imageDir + "/moose.jpg";

    // allocates cv::Mat objects to store image
    cv::Mat img1, img2, img3, img4;

    // declare display windows
    cv::namedWindow("Original Image", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Grayscale Image", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Canny Edges", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Pyramid Downsampled Image", cv::WINDOW_AUTOSIZE);

    // read in image
    img1 = cv::imread(imagePath);

    // convert to grayscale
    cv::cvtColor(img1, img2, cv::COLOR_BGR2GRAY);

    // Run Canny Edge detector on grayscal image
    cv::GaussianBlur(img2, img3, cv::Size(5,5), 3, 3); // blurr it first
    cv::Canny(img3, img3, 25, 100, 3, true);

    // Perform Pyramid downsampling (Blurr then downsample)
    cv::pyrDown(img1, img4);

    cv::imshow("Original Image", img1);
    cv::imshow("Grayscale Image", img2);
    cv::imshow("Canny Edges", img3);
    cv::imshow("Pyramid Downsampled Image", img4);
    

    cv::waitKey(0);
    cv::destroyAllWindows();

    return 0;
}

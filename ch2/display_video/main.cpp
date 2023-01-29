#include <iostream>
#include <fstream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


const std::string videoDir = "C:/Users/itber/Documents/datasets/segmentation"
                              "/out_of_sample/videos/paris_challenge.mov"; 


int main(int argc, char** argv) {
    
    cv::namedWindow("Video Example");
    cv::VideoCapture cap;

    // open video
    if (argc > 1)
        cap.open(std::string(argv[1]));
    else
        cap.open(videoDir);

    // get the frame rate
    int frame_rate = cap.get(cv::CAP_PROP_FPS);
    std::cout << "Video frame rate: " << frame_rate << std::endl;

    cv::Mat frame;
    for (;;) {
        cap >> frame;
        if ( frame.empty() ) break; // end of video

        // OPTIONAL: resize frames
        cv::resize(frame, frame, cv::Size(), 0.25, 0.25);

        cv::imshow("Video Example", frame);
        // pause for XX ms for input --> This sets the FPS
        if ( (char) cv::waitKey(1000/frame_rate) >= 0 ) break;
    }
    cv::destroyWindow("Video Example");

    return 0;

}

#include <iostream>
#include <fstream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


const std::string videoDir = "C:/Users/itber/Documents/datasets/segmentation"
                              "/out_of_sample/videos/project_video.mp4"; 
const std::string savePath = "C:/Users/itber/Documents/datasets/segmentation"
                              "/out_of_sample/videos/save_video.avi";
                              
int main(int argc, char **argv) {
    cv::namedWindow("Video Example", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("Log_Polar", cv::WINDOW_AUTOSIZE);
    cv::VideoCapture cap;

    // open video
    if (argc > 1)
        cap.open(std::string(argv[1]));
    else
        cap.open(videoDir);

    // get the frame rate
    double fps = cap.get(cv::CAP_PROP_FPS);
    cv::Size size(
        (int)cap.get(cv::CAP_PROP_FRAME_WIDTH),
        (int)cap.get(cv::CAP_PROP_FRAME_HEIGHT)
    );
    std::cout << "Video frame rate: " << fps << std::endl;

    cv::VideoWriter writer;
    // we could also use argv[2] if we passed in commandline arguments 
    writer.open(savePath, cv::VideoWriter::fourcc('M', 'J', 'P', 'G'), fps, size);
    

    cv::Mat logpolar_frame, bgr_frame;
    for (;;) {
        cap >> bgr_frame;
        if ( bgr_frame.empty() ) break; // end of video 

        // convert to logpolar
        cv::logPolar(
            bgr_frame,              // input color frame
            logpolar_frame,         // output color frame
            cv::Point2f(            // centerpoint for logpolar transformation 
                bgr_frame.cols/2,   // x
                bgr_frame.rows/2),  // y
            40,                     // magnitude/scale parameter        
            cv::WARP_FILL_OUTLIERS  // fill outliers with 0's
        );

        // display videos
        cv::imshow("Video Example", bgr_frame);
        cv::imshow("Log_Polar", logpolar_frame);

        // write logpolar to output file
        writer << logpolar_frame;

        // pause for XX ms for input --> This sets the FPS
        if ( (char) cv::waitKey(1000/fps) >= 0 ) break;
    }

    cap.release();
    cv::destroyWindow("Video Example");


    return 0;
}

#include <iostream>
#include <fstream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


const std::string videoDir = "C:/Users/itber/Documents/datasets/segmentation"
                              "/out_of_sample/videos/project_video.mp4"; // paris_challenge.mov"; 

// the "g_" indicates a global variable
int g_slider_position = 0;
int g_run = 1, g_dontset = 0; // start in single step mode
cv::VideoCapture g_cap;

void onTrackbarSlide(int pos, void*) {
    g_cap.set(cv::CAP_PROP_POS_FRAMES, pos);

    if ( !g_dontset )
        g_run = 1;
    g_dontset = 0;
}

int main(int argc, char** argv) {
    
    cv::namedWindow("Video Example", cv::WINDOW_AUTOSIZE);

    // open video
    if (argc > 1)
        g_cap.open(std::string(argv[1]));
    else
        g_cap.open(videoDir);

    // get the frame rate
    double frame_rate = g_cap.get(cv::CAP_PROP_FPS);
    std::cout << "Video frame rate: " << frame_rate << std::endl;

    // get frame infor for track bar slider
    int frames = (int) g_cap.get(cv::CAP_PROP_FRAME_COUNT);
    int tmpw = (int) g_cap.get(cv::CAP_PROP_FRAME_WIDTH);
    int tmph = (int) g_cap.get(cv::CAP_PROP_FRAME_HEIGHT);
    std::cout << "This videos has: " << frames << " frames of width: " 
              << tmpw << " and height: " << tmph << std::endl;

    // create the Trackbar
    cv::createTrackbar("Position", "Video Example", &g_slider_position,
                       frames, onTrackbarSlide);

    cv::Mat frame;
    for (;;) {

        if (g_run != 0) {
            g_cap >> frame; if ( frame.empty() ) break; // end of video

            int current_pos = (int) g_cap.get(cv::CAP_PROP_POS_FRAMES);
            // std::cout << "Curret Position: " << current_pos << std::endl;
            g_dontset = 1;

            // OPTIONAL: resize frames
            // cv::resize(frame, frame, cv::Size(), 0.25, 0.25);

            // set trackbar position for current frame
            cv::setTrackbarPos("Position", "Video Example", current_pos);
            cv::imshow("Video Example", frame);

            g_run = -1;
        }

        // pause for XX ms for input --> This sets the FPS
        char c = (char) cv::waitKey(1000/frame_rate); // 1000/frame_rate
        if (c == 's') { // single step
            g_run = 1; 
            std::cout << "Single Step mode, run = " << g_run << std::endl;
        } 
        if (c == 'r') {
            g_run = -1; 
            std::cout << "Run mode, run = " << g_run << std::endl;
        }
        if (c == 27) // esc key
            break;
    }
	
	g_cap.release();
    cv::destroyWindow("Video Example");

    return 0;

}

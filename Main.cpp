#include <iostream>
#include <opencv2/opencv.hpp>

#include <vector>
#include <String>
#include <conio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <direct.h>

#include "lbplibrary.hpp"
using namespace lbplibrary;
using namespace std;
stringstream ss;




/*void make_dir()
{
	//mkdir
	int dircheck;
	char* dirname = "DRIVELBP";
	

	dircheck = _mkdir(dirname, 0777);

	// check if directory is created or not
	if (!dircheck)
		printf("Directory created\n");
	else {
		printf("Unable to create directory\n");
		exit(1);
	}

	getch();

	system("dir");
	getch();
	



}*/


void make_dir2()
{
	{
		if (_mkdir("\\drivemodded") == 0)
		{
			printf("Directory '\\testtmp' was successfully created\n");
			system("dir \\testtmp");
			if (_rmdir("\\testtmp") == 0)
				printf("Directory '\\testtmp' was successfully removed\n");
			else
				printf("Problem removing directory '\\testtmp'\n");
		}
		else
			printf("Problem creating directory '\\testtmp'\n");
	}
}




void test_image()
{
	vector<cv::String> filenames;
	cv::Mat img_output;
	cv::Mat img_input;
	cv::Mat ct; //mhpws = 0 ???

	cv::glob("C:\\Users\\user\\Desktop\\DRIVE\\*.TIF", filenames);

	//cv::Mat img_input = cv::imread("frames/1.png");

	for (size_t i = 0; i < filenames.size(); i++)
	{
		cv::Mat img_input = cv::imread(filenames[i]);


		cv::imshow("Input", img_input);

		cv::cvtColor(img_input, img_input, cv::COLOR_BGR2GRAY);
		//cv::GaussianBlur(img_input, img_input, cv::Size(7, 7), 5, 3, cv::BORDER_CONSTANT);

		LBP* lbp;
		lbp = new OLBP;     // 0-255
		//lbp = new ELBP;     // 0-255
		//lbp = new VARLBP;   // 0-953.0
		//lbp = new CSLBP;    // 0-15
		//lbp = new CSLDP;    // 0-15
		//lbp = new XCSLBP;   // 0-15
		//lbp = new SILTP;    // 0-80
		//lbp = new CSSILTP;  // 33-120
		//lbp = new SCSLBP;   // 0-15
		//lbp = new BGLBP;    // 0-239
		lbp->run(img_input, img_output);

		double min, max; cv::minMaxLoc(img_output, &min, &max); std::cout << "min: " << min << ", max: " << max;
		cv::normalize(img_output, img_output, 0, 255, cv::NORM_MINMAX, CV_8UC1);




		cv::imshow("Output", img_output);


		

		cv::imwrite(filenames, img_output);
	}
	cv::waitKey();
	delete lbp;
}


int main(int argc, const char** argv)
{
	make_dir2();


	test_image();
	

	return 0;
}

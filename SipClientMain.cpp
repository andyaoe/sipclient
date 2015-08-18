#include <iostream>
#include "BasicUsageEnvironment.hh"

using namespace std;

UsageEnvironment* env;

int main (int argc, char *argv[])
{
    TaskScheduler* scheduler = BasicTaskScheduler::createNew();
    env = BasicUsageEnvironment::createNew(*scheduler);

    
    *env << "Failed to create RTSP server: " << env->getResultMsg() << "\n";

    return(0);
}


#include <iostream>
#include "BasicUsageEnvironment.hh"

using namespace std;


int main (int argc, char *argv[])
{
    cout << "hello world" << endl;
    BasicTaskScheduler* ts = BasicTaskScheduler::createNew();
    return(0);
}


//
// Created by Ricky Saputra on 01/20/2020.
//

#include "timespan.h"
#include <cassert>
#include <sstream>

using namespace std;

// testing constructor
void test1() {
    TimeSpan ts(1, 20, 30);
    stringstream ss;
    ss << ts;
    assert(ss.str() == "1:20:30");

    TimeSpan ts2(4, -20, -90);
    ss.str("");
    ss << ts2;
    assert(ss.str() == "3:38:30");

    TimeSpan ts3(1.5, 30.5, -90);
    ss.str("");
    ss << ts3;
    assert(ss.str() == "1:28:30");

    TimeSpan ts4(1, 30, 0);
    ss.str("");
    ss << ts4;
    assert(ss.str() == "1:30:00");
}

// testing equality, addition, subtraction, multiplication
void test2() {
    TimeSpan ts(1, 20, 30);
    TimeSpan ts2(1, 20, 30);
    TimeSpan ts3(0, 0, 0);
    assert(ts == ts2);
    assert(!(ts != ts2));
    assert(ts != ts3);
    assert((ts + ts + ts) == (ts2 * 3));
    assert((ts * 5) == (ts2 * 4) + ts2);
    assert((ts * 5) == (ts2 * 6) - ts2);
    assert((ts + ts - ts) == ((ts2 * 2) - ts));
    assert((ts - ts2) == ts3);
    assert((ts3 * 5) == ts3);

    assert((ts -= ts2) == ts3);
    assert(ts2 > ts3);
    assert(ts2 >= ts);
    assert(ts3 < ts2);
    assert(ts <= ts2);
    assert((ts3 += ts3) == ts3);
}

void test3() {
    TimeSpan ts0(-1.5, 30, 90);
    stringstream ss;
    ss.str("");
    ss << ts0;
    assert(ss.str() == "-0:28:30");

    TimeSpan ts1(-12, -90, 20);
    ss.str("");
    ss << ts1;
    assert(ss.str() == "-13:29:40");

    TimeSpan ts2(-9, 20, -65);
    ss.str("");
    ss << ts2;
    assert(ss.str() == "-8:41:05");

    TimeSpan ts3(-15, 45, -75);
    ss.str("");
    ss << ts3;
    assert(ss.str() == "-14:16:15");
}

void testAll() {
    test1();
    test2();
    test3();
}

int main() {
    testAll();
    cout << "Passed all tests. Done." << std::endl;
    return 0;
}
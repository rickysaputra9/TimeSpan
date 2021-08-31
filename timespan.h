//
// Created by Ricky Saputra on 01/20/2020.
//

#pragma once

#include <iostream>

using namespace std;

class TimeSpan {
    friend ostream &operator<<(ostream &output, const TimeSpan &timespan);

public:
    // explicit TimeSpan(int hours = 0, int minutes = 0, int seconds = 0);
    explicit TimeSpan(double hours = 0, double minutes = 0, double seconds = 0);

    // add
    TimeSpan operator+(const TimeSpan &timespan) const;

    //add equals
    TimeSpan operator+=(const TimeSpan &timespan);

    // subtract
    TimeSpan operator-(const TimeSpan &timespan) const;

    //subtract equals
    TimeSpan operator-=(const TimeSpan &timespan);

    bool operator>(const TimeSpan &timespan) const;

    bool operator<(const TimeSpan &timespan) const;

    bool operator>=(const TimeSpan &timespan) const;

    bool operator<=(const TimeSpan &timespan) const;

    // check equality
    bool operator==(const TimeSpan &timespan) const;

    // check if not equal
    bool operator!=(const TimeSpan &timespan) const;

    // multiply timespan by a number
    TimeSpan operator*(int number);

    int totalSeconds() const;

    string twoDigits(int Value) const;

private:
    double Hour;
    double Minute;
    double Second;

};

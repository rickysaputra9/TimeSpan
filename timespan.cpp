//
// Created by Ricky Saputra on 01/20/2020.
//

#include "timespan.h"

TimeSpan::TimeSpan(double Hour, double Minute, double Second) : Hour{Hour}, Minute{Minute}, Second{Second} {}

TimeSpan TimeSpan::operator+(const TimeSpan &timespan) const {
    TimeSpan ts(Hour + timespan.Hour, Minute + timespan.Minute, Second + timespan.Second);
    return ts;
}

TimeSpan TimeSpan::operator+=(const TimeSpan &timespan) {
    Hour += timespan.Hour, Minute += timespan.Minute, Second += timespan.Second;
    return *this;
}

TimeSpan TimeSpan::operator-(const TimeSpan &timespan) const {
    TimeSpan ts(Hour - timespan.Hour, Minute - timespan.Minute, Second - timespan.Second);;
    return ts;
}

TimeSpan TimeSpan::operator-=(const TimeSpan &timespan) {
    Hour -= timespan.Hour, Minute -= timespan.Minute, Second -= timespan.Second;
    return *this;
}

TimeSpan TimeSpan::operator*(int number) {
    TimeSpan ts(Hour * number, Minute * number, Second * number);
    return ts;
}

bool TimeSpan::operator>(const TimeSpan &timespan) const {
    return ((Hour > timespan.Hour) && (Minute > timespan.Minute) && (Second > timespan.Second));
}

bool TimeSpan::operator<(const TimeSpan &timespan) const {
    return ((Hour < timespan.Hour) && (Minute < timespan.Minute) && (Second < timespan.Second));
}

bool TimeSpan::operator>=(const TimeSpan &timespan) const {
    return *this == timespan || *this > timespan;
}

bool TimeSpan::operator<=(const TimeSpan &timespan) const {
    return *this == timespan || *this < timespan;
}

bool TimeSpan::operator==(const TimeSpan &timespan) const {
    return Hour == timespan.Hour || Minute == timespan.Minute || Second == timespan.Second;
}

bool TimeSpan::operator!=(const TimeSpan &timespan) const {
    return !(*this == timespan);
}

int TimeSpan::totalSeconds() const {
    int total = (int) Hour * 3600 + (int) Minute * 60 + (int) Second;
    return total;
}

string TimeSpan::twoDigits(int Value) const {
    if (Value < 10) {
        return "0" + to_string(Value);
    } else {
        return to_string(Value);
    }
}

ostream &operator<<(ostream &output, const TimeSpan &timespan) {
    int total = timespan.totalSeconds();
    int hourNow = total / 3600;
    int minuteNow = (total % 3600) / 60;
    int secondsNow = total % 3600;
    secondsNow %= 60;

    if (total > 0) {
        output << hourNow << ":" << timespan.twoDigits(minuteNow) << ":" << timespan.twoDigits(secondsNow);
    } else if (total < 0) {
        int hourNew = hourNow * (-1);
        int minNew = minuteNow * (-1);
        int secNew = secondsNow * (-1);
        output << "-" << hourNew << ":" << timespan.twoDigits(minNew) << ":" << timespan.twoDigits(secNew);
    }
    return output;
}

import "dart:io";

void main (){
// Reads a number of days.
print('Enter a number of days:'); // Prompt user
double input = double.parse(stdin.readLineSync() ?? '0');

// Converts days to years (1 year = 365 days), months (1 month = 30 days), hours, and seconds.
int numOfYears = input ~/ 365; // to get the number of years
double remainingDaysAfterYears = input % 365; // to get the remaining days from a year

int numOfMonths = remainingDaysAfterYears ~/ 30; // to get the number of month
double remainingDaysAfterMonths = remainingDaysAfterYears % 30; // to get the remaining day from a month

int numOfDays = remainingDaysAfterMonths ~/ 1; // to get the number of days
double remainingHours = remainingDaysAfterMonths - numOfDays; // to get the remaining hours from a day

double numOfHours = remainingHours * 24 ; // to get the number of hours
int hours = numOfHours.floor();

double remainingSeconds = numOfHours - hours; // to get the remaining time from a hour
double numOfSeconds = remainingSeconds * 3600 ; // to get the number of seconds

// Prints all results.
print('The given number is $input days.');
print('That is $numOfYears years, $numOfMonths months, $numOfDays days, $hours Hours, and $numOfSeconds Second.');
}
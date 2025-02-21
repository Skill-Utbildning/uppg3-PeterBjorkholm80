#include <stdio.h>
#include "functions.h"

int main()
{
    float body_temp = 37.5;
    float scales_meet = -40.0;
    float boiling = 100.0;

    printf("%.1f\n", celsius_to_fahrenheit(body_temp));
    printf("%.1f\n", celsius_to_fahrenheit(scales_meet));
    printf("%.1f", celsius_to_fahrenheit(boiling));
    

    return 0;
}

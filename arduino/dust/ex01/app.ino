#include <MiniCom.h>

unsigned long lowpulseoccupancy = 0;
float ratio = 0;
const int DUST_PIN = 8;
unsigned long sampletime_ms = 2000;
MiniCom com;

void setup()
{
    pinMode(DUST_PIN, INPUT);
    com.setInterval(sampletime_ms, dust_check);
}
void loop()
{
    unsigned long duration = pulseIn(DUST_PIN, LOW);
    lowpulseoccupancy += duration;
    com.run();
}

void dust_check()
{
    // Integer percentage 0=>100
    ratio = lowpulseoccupancy / (sampletime_ms * 10.0);
    double concentration = 1.1 * pow(ratio, 3) - 3.8 * pow(ratio, 2) +
                    520 * ratio + 0.62; // using spec sheet curve
    int dustDensity = concentration * 100 / 13000;
    lowpulseoccupancy = 0;
    int dust_level=0;
    if (dustDensity > 150) dust_level = 3;
    else if (dustDensity > 80) dust_level = 2;
    else if (dustDensity > 30) dust_level = 1;
    else dust_level = 0;
}
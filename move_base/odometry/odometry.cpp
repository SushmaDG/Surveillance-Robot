#define pi 3.142
#define Ticks_per_rotation 30

#include "Arduino.h"

static int r=101.6;
int s;
 
void DifferentialDrive::updatePosition()
{
   // get the angular distance traveled by each wheel since the last update
   double leftDegrees = _leftWheel->getDistance();
   double rightDegrees = _rightWheel->getDistance();
 
   // convert the angular distances to linear distances
   double dLeft = leftDegrees / _degreesPerMillimeter;
   double dRight = rightDegrees / _degreesPerMillimeter;
 
   // calculate the length of the arc traveled by Colin
   double dCenter = (dLeft + dRight) / 2.0;
 
   // calculate Colin's change in angle
   double phi = (dRight - dLeft) / (double)_wheelDistance;
   // add the change in angle to the previous angle
   _theta += phi;
   // constrain _theta to the range 0 to 2 pi
   if (_theta > 2.0 * pi) _theta -= 2.0 * pi;
   if (_theta < 0.0) _theta += 2.0 * pi;
 
   // update Colin's x and y coordinates
   _xPosition += dCenter * cos(_theta);
   _yPosition += dCenter * sin(_theta);
}

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:

}

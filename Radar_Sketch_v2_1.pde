/*
Current operating theory behind inputs is that sketch will draw a traditional radar circle with a line
within serving as the primary indicator of the robot sonar sensor. in theory (assuming input from sensor is time)
a red elipse will be drawn to represent a detected object on the radar screen.
this ellipse is drawn according to the relative position of the sensor (indicated by the blue line)
cross referenced to the time value indicated by the robot's sonar sensor (time value)
once both values are inputed into the sketch the red elipse will demonstrate the relative distance between the robot and an object.
*/

// line length is r
float r = 240;
float theta = 0; //radians
float x2, y2;
float LocationInputX = 0;    // placeholder value for sensor input
float LocationInputY = 0;    // placeholder value for sensor input
float x, y;
float Grid = 2;
int gridXMax=1000;
int gridYMax=800;

void setup()
{
  size(1000,800);    // v2: changed height to 500
  
  // background(red,green,blue)
  background(50,50,50);
}

void draw()
{
  
  // line(x1, y1, x2, y2)
    
  background(50,50,50);

  strokeWeight(1);
  stroke(#5BE069);

  for(float i=0;i<gridXMax;i+=10) //draw lines on the 
  {
      line(0,i,width,i);
  }
  
  for(float i=0;i<gridYMax;i+=10) //draw lines on the 
  {
    line(i,0,i,height);
  }
  

  fill(50,50,50);  // v2: Set fill color of 2d Primitives to same as background
  stroke(#050505);  // v2: set line stroke color to same green as plot lines
  noFill();
  
  strokeWeight(5);
  ellipse(width/2,height/2,480,480);  // v2: drew ellipse in center to serve as visible limits of radar system.
  
  fill(#FF0808); 
  stroke(#FF0808);
  ellipse(LocationInputX,LocationInputY,10,10);  // draws a small red ellipse where there is input from sensor
  
  stroke(#050505);
  strokeWeight(5);
  line(width/Grid, 0, width/Grid, height);  // the horizontal grid line used to seperate the radar into quadrants
  stroke(#050505);
  line(0, height/Grid, width, height/Grid); // the vertical grid line used to seperate the radar into quadrants
  
  stroke(101,219,250);
  strokeWeight(5);
  x2 = width/2 + r*cos(theta);  // these values are used to make the radar's blue indicator spin
  y2 = height/2 - r*sin(theta); // ^
  line(width/2, height/2, x2, y2);  // this draws the indicator which will eventually represent where the sensor is facing
  
  theta = theta + 0.01; 
  

}
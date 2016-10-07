
/*
  this is an object version of Jacob's Radar screen
  https://docs.oracle.com/javase/tutorial/java/concepts/class.html
*/

public class Radar_screen
{
  // instance values 
  private int r; // lengh of the scan line 
  private float thata; // current positon of the scan line in radians 
  private float scanX,scanY; // position of the end of the scan line 
  private int gridMaxX,gridMaxY;
  private Imap local_map; // map of objects that the sensor has picked up
  
  // constructor 
  public Radar_screen(int r)
  {
    // 'this' means this class
    this.r=r;
    this.gridMaxX=1000;
    this.gridMaxY=1000;
    
  }
  
  // method to draw the grid 
  private void drawGrid()
  {
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
    
  }
  
  public void reDraw()
  {
    
    this.drawGrid();
    
    strokeWeight(5);
    // ellipse(width/2,height/2,480,480);  // v2: drew ellipse in center to serve as visible limits of radar system.
    ellipse(width/2,height/2,(2*r),(2*r)); // v3: visible limit of radar system is now the same size as the line of the radar system
  
    fill(#FF0808); 
    stroke(#FF0808);
    ellipse(LocationInputX,LocationInputY,10,10);  // draws a small red ellipse where there is input from sensor
  
    stroke(#050505);
    strokeWeight(5);
    line(width/2, 0, width/2, height);  // the horizontal grid line used to seperate the radar into quadrants
    stroke(#050505);
    line(0, height/Grid, width, height/Grid); // the vertical grid line used to seperate the radar into quadrants
  
    stroke(101,219,250);
    strokeWeight(5);
    scanX = width/2 + r*cos(theta);  // these values are used to make the radar's blue indicator spin
    scanY = height/2 - r*sin(theta); // ^
    line(width/2, height/2, scanX, scanY);  // this draws the indicator which will eventually represent where the sensor is facing
  
    theta = theta + 0.01; 
  }
  
  public void clearPos(PVector d)
  {
    
  }
  
  // set the current map 
  public void setMap(Imap current_map)
  {
     
  }
 
  // update to a new map
  public void updateMap(Imap nextMap)
  {
    
  }
  
}
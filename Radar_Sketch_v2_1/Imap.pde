
/*
  this is an interface for our internal "map"  the fallowing links explain what I'm trying to do here. 
  http://tutorials.jenkov.com/java/interfaces.html
  https://msdn.microsoft.com/en-us/library/ff921152.aspx
  
  tl;dr I'm writing a special interface class that will let us create diffent versions of the map class to test with diffent guidence algerithms 
  
*/

public interface Imap
{
 
  
   void addPos(int x,int y); // add a new position
   void addPos(PVector d);
   void clearPos(PVector d);
   boolean [][] getMatrix(); // return a 2d array of boolean values;
   boolean isOccupied(int x,int y); // returns true if there is an object 
   void transformBydisplacement(PVector d); // transforms the value of the map by the componets of vector d 
   String getJson(); // return json formatted text of the currnt map
}
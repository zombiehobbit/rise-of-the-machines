import java.io.*;

public class TestMap implements Imap
{
  private int sizeX;
  private int sizeY;
  private String mapBuffer;
  private boolean[][] map;
  
  public TestMap()
  {
     loadTestMap("./../testmap.txt"); // relitive link
  }
  
  private void loadTestMap(String fileName)
  {
    String[] data=loadStrings(fileName);
    this.sizeY=data.length;
    this.sizeX=data[0].length();
    map=new boolean[sizeX][sizeY];
   
   //println("sizeX: "+sizeX+" sizeY: "+sizeY);
   
    for(int x=0;x<this.sizeX;x++)
    {
      for(int y=0;y<(sizeY-1);y++)
      {
         //println("x: "+x+" y: "+y);
        
         if(data[y].charAt(x)=='a' || data[y].charAt(x)=='8')
         {
           map[x][y]=true; 
         }
         else if(data[y].charAt(x)==' ')
         {
           map[x][y]=false;
         }
         
         // print the map to standerd out 
         
         if(map[x][y])
           print('*');
         else
           print(' ');
         
      }
      println(); // new line for printing out the map
    }
    
  }
  
  public void addPos(int x,int y)
  {
    map[x][y]=true;
  }
  
  public void addPos(PVector d)
  {
     int cx=(int)d.x;
     int cy=(int)d.y;
     map[cx][cy]=true;
  }
  
  public void clearPos(PVector d)
  {
    int cx=(int)d.x;
    int cy=(int)d.y;
    map[cx][cy]=false;
  }
  
  public boolean [][] getMatrix()
  {
    boolean[][] out=new boolean[100][100];
    
    return out;
  }
  
  public boolean isOccupied(int x,int y)
  {
    return false;
  }
  
  public void transformBydisplacement(PVector d)
  {
    // basicly, move all the componets according the the x and y displacement of the vector 
  }
  
  public String getJson()
  {
    return "nothing here";
  }
  
  public int getX()
  {
    return this.sizeX; 
  }
  
  public int getY()
  {
    return this.sizeY; 
  }
  
}
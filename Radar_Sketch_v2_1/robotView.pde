
public class RobotView implements Imap
{
  private boolean[][] map;
  private int mapSizeX,mapSizeY;
  private int centerX,centerY; // robot is at the center of the map
  
  public RobotView(int mapSizeX,int mapSizeY)
  {
    map=new boolean[mapSizeX][mapSizeY];
    this.mapSizeX=mapSizeX;
    this.mapSizeY=mapSizeY;
    blankOutMap(map,mapSizeX,mapSizeY);
    
    centerX=mapSizeX/2;
    centerY=mapSizeY/2;
    
  }
  
  private void blankOutMap(boolean[][] map_data,int sizeX,int sizeY)
  {
    for(int x=0;x<sizeX;x++)
    {
      for(int y=0;y<sizeY;y++)
      {
        map_data[x][y]=false; 
      }
    }
  }
  
  public void clearPos(PVector d)
  {
    
  }
  
  public void addPos(int x,int y)
  {
    map[x][y]=true;
  }
  
  public void addPos(PVector d)
  {
    
  }
  
  public boolean [][] getMatrix()
  {
    boolean[][] please_compile=new boolean[3][4];
    
    return please_compile;
  }
  
  public boolean isOccupied(int x,int y)
  {
    return false; 
  }
  
  public boolean isMapBlank()
  {
    return true; // well it is... 
  }
  
  
  public void transformBydisplacement(PVector d)
  {
     
  }
  
  public String getJson()
  {
    return null; 
  }
  
  
}
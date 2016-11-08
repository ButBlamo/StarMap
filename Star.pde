class Star 
{
  //Value of 1 given if the star could host human life
  Boolean habitability_flag;
  String displayName;
  //Distance from sun
  float distance;
  //Holds star coordinates. 
  float xCoords;
  float yCoords;
  float zCoords;
  
  float star_size;
  
  //Constructor for tablerow
  
  Star (Boolean hab_flag, String dispName, float dist, 
        float xPos, float yPos, float zPos, float star_size)
  {
    this.habitability_flag = hab_flag;
    this.displayName = dispName;
    this.distance = dist;
    this.xCoords = xPos;
    this.yCoords = yPos;
    this.zCoords = zPos;
  }
  
  /*
  Star (TableRow row)
  {
    this.
  }
  */

}
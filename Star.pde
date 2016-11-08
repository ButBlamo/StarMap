class Star 
{
  //Value of 1 given if the star could host human life
  int habitability_flag;
  String displayName;
  //Distance from sun
  float distance;
  //Holds star coordinates. 
  float xCoords;
  float yCoords;
  float zCoords;
  
  float starSize;
  
  //Constructor for tablerow
  
  Star (int hab_flag, String dispName, float dist, 
        float xPos, float yPos, float zPos, float star_size)
  {
    this.habitability_flag = hab_flag;
    this.displayName = dispName;
    this.distance = dist;
    this.xCoords = xPos;
    this.yCoords = yPos;
    this.zCoords = zPos;
    this.starSize = star_size;
  }
  
  /*
  Star (TableRow row)
  {
    this.
  }
  */
  
  //Convert the data received to a string so the user can read the output more clearly
  String toString()
  {
    return habitability_flag + "\t" + displayName + "\t" + distance + "\t" 
           + xCoords + "\t" + yCoords + "\t" + zCoords + "\t";
  }
  
}
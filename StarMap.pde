/* Daniel Moloney C15446648

   Date: 08/11/2016
   
   NOTE TO SELF: get faster at coding
*/

//New arraylist
ArrayList<Star> stars = new ArrayList<Star>();


void setup()
{
  size(800,800);
  background(0);
  
  drawGrid();
  
  //Loading data from csv file into global arrayList
  loadData();
  
  //Printing data to screen for user to see
  printStars();
}


void draw()
{
  int i;
  Star plotting_stars = null;
  //Plotting stars onto grid
  
  for (i = 0; i < stars.size(); i++)
  {
    plotting_stars = stars.get(i);
    
    stroke(255);
    
    //Failed attempt at plotting stars
    ellipse(plotting_stars.xCoords, plotting_stars.yCoords, 5, 5);
    
  }
}


//Method loadData created to load in values into arraylist
void loadData()
{
  Table t = loadTable("starData.csv", "header");
  int row;
  
  for (row = 0; row < t.getRowCount(); row++)
  {
    //Create new class object
    Star data = new Star
                (t.getInt(row, 2),
                 t.getString(row, 3),
                 t.getFloat(row, 12),
                 t.getFloat(row, 13),
                 t.getFloat(row, 14),
                 t.getFloat(row, 15),
                 t.getFloat(row, 16)
                );
     stars.add(data);
                 
  }
}//End fxn loadData()


void printStars()
{
  int i;
  //Set value of arraylist that prints values to null
  Star printing_table = null;
  
  //Help user know which column is which
  println("Hab\tDisplayname Distance\tXg\tYg\tZg\tAbsMag\t");
  
  //Loop for printing contents of arraylist
  for (i = 0; i < stars.size(); i++)
  {
    printing_table = stars.get(i);
    
    println(printing_table);
    
  }
  
}


void drawGrid()
{
  //Counters in loop
  int i, j;
  
  stroke(50, 0, 255);
  noFill();
  
  int rows = 10;
  int columns = 10;
  
  float cellWidth, cellHeight;
  
  cellWidth = width  / rows;
  cellHeight = height / columns;
  
  //Loop for creating the graph. inner loop used as rows and columns being created
  for (i = 0; i < width; i +=cellWidth)
  {
    for (j = 0; j < height; j +=cellHeight)
    {
        rect(i, j, cellWidth, cellHeight);
    }
    
  }
}//End fxn drawGrid
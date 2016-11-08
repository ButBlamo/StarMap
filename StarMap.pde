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
  int border = 50;
  
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
  
  
}
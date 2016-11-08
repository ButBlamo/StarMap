//New arraylist
ArrayList<Star> stars = new ArrayList<Star>();


void setup()
{
  size(800,800);
  
  loadData();
  
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
  
  //Loop for printing contents of arraylist
  for (i = 0; i < stars.size(); i++)
  {
    printing_table = stars.get(i);
    
    println(printing_table);
    
  }
  
}
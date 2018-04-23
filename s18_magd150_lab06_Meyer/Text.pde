class Text{
  float locX, locY;
  String foodWord;
  //PFont font;    //could not figure out fonts
  int a[] = new int[3];
  int b[] = new int[3];
  int fontSize;
  float timeInterval, timePast;
  //String[] fontList = PFont.list();    //could not figure out fonts
  //Array of foods to print onto screen
  String foods[] = {"PIZZA", "TACOS", "CHEESEBURGER", "ICE CREAM", "CHIPS",
                    "SANDWICH", "PASTA", "CANDY BAR", "NACHOS", "FISHSTICK",
                    "CORNDOGS", "SODA POP", "BUBBLE GUM", "CUPCAKE", "TURDUCKEN",
                    "GUACAMOLE", "BUSH'S BAKED BEANS", "CHEEEEEESE", "FRENCH FRIES", "CHILIDOG",
                    "LETTUCE? NOOOOOOO", "MILKSHAKE"};
                    
                    
  // sets up a Text object
  Text(float locX, float locY, int fontSize, String foodWord){
    this.locX = locX;
    this.locY = locY;
    this.fontSize = fontSize;
    //this.font = font;
    this.foodWord = foodWord;
    
  }
  
  // creates new random x and y locations for words
  void randLocate(){
    locX = int(random(width));
    locY = int(random(height));
  }
  
  // adds 1 to x and y location
  void threeDee(){
    locX += 1;
    locY +=1;
  }
  
  // gets a random number to set new font sizes
  void randFontSize(){
    fontSize = int(random(10,70));
  }
  
  //  could not figure out the fonts
  /*void randFont(){
    int a = int(random(0,fonts.length));
    font = createFont(a, fontSize2);
  }
  */
  
  // chooses a rondom word out of the foods array
  void randWord(){
    foodWord = foods[int(random(0,21))];
  }
  
  //creates an array to hold 3 random numbers for color
  void randColor(){
    a[0] = int(random(255));
    a[1] = int(random(255));
    a[2] = int(random(255));
  }
  
  //display function prints words to screen
  void display(){
    textSize(fontSize);
    fill(a[0],a[1],a[2]);
    text(foodWord,locX,locY);
    
  }
}
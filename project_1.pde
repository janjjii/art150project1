boolean whole = false;
boolean half = false;
boolean quarter = false;
boolean eigth = false;
boolean sixteenth = false;
PImage treble;
PImage bass;

void setup()
{
  size(1200, 400);
  background(255, 255, 250);
  
  // clefs
  imageMode(CENTER);
  treble = loadImage("treble.png");
  bass = loadImage("bass.png");
}

void draw()
{
  // instructions
  println("INSTRUCTIONS: ");
  println("To change note value, press: ");
  println("1 - whole | 2 - half | 4 - quarter | 8 - eigth | 6 - sixteenth");
  print("Clef and Note: ");
  fill(random(255), random(255), random(250));
  text("read console for instructions and note identifier", 465, 380);
  noFill();
  frameRate(60);
  
  // clefs positioning
  image(treble, 42, 140, 100, 170);
  image(bass, 42, 270, 70, 90);
  
  // staves
  for(int i = 1; i <= 5; i++)
  {
    line(0, (i * 25) + 50, width, (i * 25) + 50);
  }
  for(int i = 1; i <= 5; i++)
  {
    line(0, (i * 25) + 200, width, (i * 25) + 200);
  }
  
  // note identifier
  // out of bounds
  if(mouseY < 70){println("not within the treble octave");}
  if(mouseY > 326){println("not within the bass clef octave");}
  
  // bass
  if(mouseY >= 200 && mouseY <= 325)
  {
    if(mouseY >= 320 && mouseY <= 340){println("Bass G");}
    if(mouseY >= 307 && mouseY <= 319){println("Bass A");}
    if(mouseY >= 295 && mouseY <= 306){println("Bass B");}
    if(mouseY >= 281 && mouseY <= 294){println("Bass C");}
    if(mouseY >= 270 && mouseY <= 280){println("Bass D");}
    if(mouseY >= 256 && mouseY <= 269){println("Bass E");}
    if(mouseY >= 245 && mouseY <= 255){println("Bass F");}
    if(mouseY >= 233 && mouseY <= 244){println("Bass G");}
    if(mouseY >= 220 && mouseY <= 232){println("Bass A");}
    if(mouseY >= 210 && mouseY <= 219){println("Bass B");}
  }
  
  // middle c
  if(mouseY >= 195 && mouseY <= 209){println("Middle C");}
  
  // treble
  if(mouseY >= 70 && mouseY < 195)
  {
    if(mouseY >= 183 && mouseY <= 194){println("Treble D");}
    if(mouseY >= 170 && mouseY <= 182){println("Treble E");}
    if(mouseY >= 158 && mouseY <= 169){println("Treble F");}
    if(mouseY >= 145 && mouseY <= 157){println("Treble G");}
    if(mouseY >= 133 && mouseY <= 144){println("Treble A");}
    if(mouseY >= 120 && mouseY <= 132){println("Treble B");}
    if(mouseY >= 107 && mouseY <= 119){println("Treble C");}
    if(mouseY >= 95 && mouseY <= 106){println("Treble D");}
    if(mouseY >= 81 && mouseY <= 94){println("Treble E");}
    if(mouseY >= 70 && mouseY <= 80){println("Treble F");}
  }
  
  // notes, default is black dot
  frameRate(5);
  fill(0, 0, 0);
  ellipse(mouseX, mouseY, 40, 15);
  
  // stems
  if(whole == true)
  {
    fill(255, 255, 250);
    ellipse(mouseX, mouseY, 30, 5);
    println("Whole");
  }
  if(half == true)
  {
    fill(255, 255, 250);
    ellipse(mouseX, mouseY, 30, 5);
    fill(0, 0, 0);
    rect(mouseX + 15, mouseY - 70, 5, 70); 
    println("Half");
  }
  if(quarter == true)
  { 
    rect(mouseX + 15, mouseY - 70, 5, 70); 
    println("Quarter");
  }
  if(eigth == true)
  {
    triangle(mouseX + 15, mouseY - 70, mouseX + 45, mouseY - 60, mouseX + 15, mouseY - 60);
    rect(mouseX + 15, mouseY - 70, 5, 70);
    println("Eigth");
  }
  if(sixteenth == true)
  {
    triangle(mouseX + 15, mouseY - 70, mouseX + 45, mouseY - 60, mouseX + 15, mouseY - 60);
    triangle(mouseX + 15, mouseY - 80, mouseX + 45, mouseY - 70, mouseX + 15, mouseY - 70);
    rect(mouseX + 15, mouseY - 70, 5, 70);
    println("Sixteenth");
  }
}

void keyPressed()
{
  // whole
  if(key == '1')
  {
    whole = true; 
    half = false;
    quarter = false;
    eigth = false;
    sixteenth = false;
  }
  // half
  if(key == '2')
  {
    whole = false; 
    half = true;
    quarter = false;
    eigth = false;
    sixteenth = false;
  }
  // quarter
  if(key == '4')
  {
    whole = false; 
    half = false;
    quarter = true;
    eigth = false;
    sixteenth = false;
  }
  // eigth
  if(key == '8')
  {
    whole = false; 
    half = false;
    quarter = false;
    eigth = true;
    sixteenth = false;
  }
  // sixteenth
  if(key == '6')
  {
    whole = false; 
    half = false;
    quarter = false;
    eigth = false;
    sixteenth = true;
  }
}

boolean debug = false;

boolean rectOver1 = false;
boolean rectOver2 = false;
boolean rectOver3 = false;
boolean rectOver4 = false;
String sysMessage = "Click on the button to update me";
int screenNumber = 1;
PImage img;

void setup()
{
  size(700, 800);
  //background(255, 255, 255);
  img = loadImage("waterCycle.jpg");
}

void draw()
{
  background(150,150,255);

  debugButton();
  ScreenNav();
}



void debugButton() {
  if (debug == true) {
    //  buttons
    fill(200, 200, 200);
    rect( 180, 320, 154, 76);

    fill(200, 200, 200);
    rect( 70, 200, 76, 154);

    fill(200, 200, 200);
    rect( 180, 160, 154, 76);

    fill(200, 200, 200);
    rect( 350, 200, 76, 154);
  } else {
  }
}

void ScreenNav() {
  if (screenNumber == 1) {


    image(img, 20, 130);
    fill(0, 0, 0);
    if (mousePressed) {
      if (mouseX >= 180 && mouseX <= 180+154 && mouseY >= 320 && mouseY <= 320+76) {
        print(1);
        screenNumber = 2;
        text("Step 1", 220, 390);
      } else if (mouseX >= 70 && mouseX <= 70+76 && 
        mouseY >= 200 && mouseY <= 200+154) {
        print(2);
        screenNumber = 3;
        sysMessage = "Step 2";
        text(sysMessage, 220, 390);
      } else if (mouseX >= 180 && mouseX <= 180+154 && mouseY >= 160 && mouseY <= 160+76) {
        print(3);
        screenNumber = 4;
        sysMessage = "Step 3";
        text(sysMessage, 220, 390);
      } else if (mouseX >= 350 && mouseX <= 350+76 && mouseY >= 200 && mouseY <= 200+154) {
        print(4);
        screenNumber = 5;
        sysMessage = "Step 4";
        text(sysMessage, 220, 390);
      }
    }
  } else if (screenNumber == 2) {
    //step 1
    textInfo("Collection", "Collection is when water is collected into a\n large body of water. The water can\n come from rivers, water falls, etc.");
    backButton();
  } else if (screenNumber == 3) {
    //step 2
    textInfo("Evaporation", "Evaporation is when water is heated \n up by the sun and as a result \nturns into vapor and goes up in the sky.");
    backButton();
  } else if (screenNumber == 4) {
    //step 3
    textInfo("Condesation", "Condensation is when clouds form \nfrom the vapor created in Evaporation.");
    backButton();
  } else if (screenNumber == 5) {
    //step 4
    textInfo("Precipitation", "After all the water is collected, it rains:-)");
    backButton();
  }
}


void backButton() {
  fill(90, 90, 90);
  rect(155, 520, 204, 76);
  fill(255);
  text("Back",237,558);
  if (mousePressed && (mouseX >= 155 && mouseX <= 155+204 && mouseY >= 520 && mouseY <= 520+76)) {
    print("Returning back");
    screenNumber = 1;
  }
}

void textInfo(String title, String desc) {
  textAlign(LEFT, CENTER);
  textSize(52);
  fill(0);
  text(title, 150, 150);
  textSize(24);
  text(desc, 15, 220);
}

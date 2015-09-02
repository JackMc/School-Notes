import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

PImage backgroundImage;

Minim minim;
AudioPlayer song1Player;
AudioPlayer song2Player;
AudioPlayer song3Player;

AudioPlayer currentSong;
int currentSongNumber = 1;

final int numSongs = 3;

final int buttonWidth = 30;
final int buttonHeight = 40;

final int buttonY = 125;

final int buttonBlinkDuration = 750;

int middleButtonX;
int leftButtonX;
int rightButtonX;

PFont buttonFont;

void setup() {
  backgroundImage = loadImage("TheJuke.png");
  size(backgroundImage.width, backgroundImage.height);
  
  middleButtonX = width/2;
  leftButtonX = middleButtonX - buttonWidth - 30;
  rightButtonX = middleButtonX + buttonWidth + 30;
  
  minim = new Minim(this);
  song1Player = minim.loadFile("Fancy.mp3");
  song2Player = minim.loadFile("Anaconda.mp3");
  song3Player = minim.loadFile("Break Free.mp3");
  
  song1Player.play();
  
  buttonFont = loadFont("Serif.plain-48.vlw");
  // Is there a way to grab this from the font object?
  textFont(buttonFont, 48);
  textAlign(CENTER, CENTER);
}

void draw() {
  image(backgroundImage, 0, 0);
  
  drawButton(leftButtonX, buttonY, 1);
  drawButton(middleButtonX, buttonY, 2);
  drawButton(rightButtonX, buttonY, 3);
}

void _drawButton(int x, int y, int buttonNumber) {
  fill(255);
  rectMode(CENTER);
  
  rect(x, y, buttonWidth, buttonHeight);
  fill(0);
  text(buttonNumber, x, y);
}

void drawButton(int x, int y, int buttonNumber) {
  if (currentSongNumber != buttonNumber) {
    _drawButton(x, y, buttonNumber);
  }
  else {
    if (millis() % (2*buttonBlinkDuration) < buttonBlinkDuration) {
      _drawButton(x, y, buttonNumber);
    }
  }
}

void mouseClicked() {
  if (mouseY > (buttonY - (buttonHeight/2)) && mouseY < (buttonY + (buttonHeight/2))) {
    int halfBWidth = buttonWidth/2;
    if (mouseX > (leftButtonX - halfBWidth) && mouseX < (leftButtonX + halfBWidth)) {
      song1Player.rewind();
      song1Player.play();
      song2Player.pause();
      song3Player.pause();
      currentSongNumber = 1;
    }
    if (mouseX > (middleButtonX - halfBWidth) && mouseX < (rightButtonX + halfBWidth)) {
      song1Player.pause();
      song2Player.rewind();
      song2Player.play();
      song3Player.pause();
      currentSongNumber = 2;
    }
    if (mouseX > (rightButtonX - halfBWidth) && mouseX < (rightButtonX + halfBWidth)) {
      song1Player.pause();
      song2Player.pause();
      song3Player.rewind();
      song3Player.play();
      currentSongNumber = 3;
    }
  }
}

import processing.video.*;
import controlP5.*;


ControlP5 cp5;

Movie my_video;


void setup() {
  size(640,410);
  
  background(0);
  
  //Load and play the video in loo
  my_video = new Movie(this, "NYC_TimeSquare.mp4");
  my_video.play();
  
  //Load GUI Items
  cp5 = new ControlP5(this);
  
  //CREATE A NEW BUTTON WİTH NAME 'BUTTONA'
  cp5.addButton("Play")
  .setValue(0)
  .setPosition(180,385)
  .setSize(90,19)
  ;
  
    //CREATE A NEW BUTTON WİTH NAME 'BUTTONB'
  cp5.addButton("Pause")
  .setValue(0)
  .setPosition(280,385)
  .setSize(90,19)
  ;
  
      //CREATE A NEW BUTTON WİTH NAME 'BUTTONC'
  cp5.addButton("Stop")
  .setValue(0)
  .setPosition(380,385)
  .setSize(90,19)
  ;
  
}

//Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

void Play() {
  my_video.play();
}

void Stop() {
  my_video.jump(0);
  my_video.stop();
}

void Pause() {
  my_video.pause();
}

void draw() {

  image (my_video,0,0,width,height-30);
}
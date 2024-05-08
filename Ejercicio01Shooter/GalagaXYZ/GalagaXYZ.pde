private Asteroide roca;
private Shooter nave;
private JoyPad joyPad;
private HUD hud;

public void setup(){
  size(800,600);
  hud= new HUD();
  roca= new Asteroide(new PVector(width/2,0));
  nave=new Shooter(new PVector(width/2,height*5/6));
  nave.setVelocidad(new PVector(10,5));
  roca.setVelocidad(new PVector(0,5));
  joyPad=new JoyPad();
}
public void draw(){
  hud.display(nave.getCantVidas());
  roca.display();
  if(roca.getPosicionY()<=height){
    roca.move(0);
  }else{
    roca.move(1);
  }
  nave.display();
  if(joyPad.isUpPressed()){
    nave.move(0);
  }
  if(joyPad.isDownPressed()){
    nave.move(1);
  }
  if(joyPad.isLeftPressed()){
    nave.move(2);
  }
  if(joyPad.isRightPressed()){
    nave.move(3);
  }
  
}

public void keyPressed(){
  if(key=='w' || key=='W' || keyCode==UP){
    joyPad.setUpPressed(true);
  }
  if(key=='s' || key=='S' || keyCode==DOWN){
    joyPad.setDownPressed(true);
  }
  if(key=='d' || key=='D' || keyCode==RIGHT){
    joyPad.setRightPressed(true);
  }
  if(key=='a' || key=='A' || keyCode==LEFT){
    joyPad.setLeftPressed(true);
  }
}

public void keyReleased(){
  if(key=='w' || key=='W' || keyCode==UP){
    joyPad.setUpPressed(false);
  }
  if(key=='s' || key=='S' || keyCode==DOWN){
    joyPad.setDownPressed(false);
  }
  if(key=='d' || key=='D' || keyCode==RIGHT){
    joyPad.setRightPressed(false);
  }
  if(key=='a' || key=='A' || keyCode==LEFT){
    joyPad.setLeftPressed(false);
  }
}

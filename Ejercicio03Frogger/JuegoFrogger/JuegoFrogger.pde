private Personaje pj;
private Escenario escenario;
private JoyPad joyPad;

public void setup(){
  size(600,600);
  escenario= new Escenario();
  pj= new Personaje(new PVector(width/2,height/32*30));
   joyPad=new JoyPad();
}

public void draw(){
  background(0);
  escenario.display();
  pj.display();
 
  
 
  
}
public void keyReleased(){
  if(key=='w' || key=='W' || keyCode==UP){
      pj.move(0);
  }
  if(key=='s' || key=='S' || keyCode==DOWN){
    pj.move(1);
  }
  if(key=='d' || key=='D' || keyCode==RIGHT){
   pj.move(2);
  }
  if(key=='a' || key=='A' || keyCode==LEFT){
    pj.move(3);
  }
}

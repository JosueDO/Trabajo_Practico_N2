private Asteroide roca;
private Shooter nave;
private JoyPad joyPad;
private HUD hud;
private Escenario escenario;

public void setup(){
  size(800,600);
  hud= new HUD();
  roca= new Asteroide(new PVector(width/2,0));
  nave=new Shooter(new PVector(width/2,height*5/6));
  nave.setVelocidad(new PVector(10,5));
  roca.setVelocidad(new PVector(0,5));
  joyPad=new JoyPad();
  escenario= new Escenario();
}
public void draw(){
  escenario.display();
  hud.mostrarCantVidas(nave);
  roca.display();
  if(roca.getPosicionY()<=height){//pregunta si la roca llego al borde inferior
    roca.move(0);
  }else{
    roca.move(1);
  }
  nave.display();//dibuja la nave
  /*LOS IF POSTERIORES ACTUALIZAN LA POSICION DE LA NAVE NO LA DIBUJAN*/
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

/*TECLAS ESCOGIDAS PARA LOS MOVIMIENTOS DE LA NAVE
W O UP: ARRIBA, S O DOWN: ABAJO, D O RIGHT:DERECHA, A O LEFT: IZQUIERDA
MIENTRAS LAS TECLAS ESTEN PRESIONADAS ASIGNARA TRUE*/
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

/*CUANDO LAS TECLAS DEJEN DE PRESIONARSE LES ASIGNARA FALSE
DE ESTA MANERA SE PODRA CONTROLAR QUE MIENTRAS SEA TRUE SE MOVERA Y FALSE SE QUEDARA QUIETO
EN SUS RESPECTIVAS POSICIONES*/
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

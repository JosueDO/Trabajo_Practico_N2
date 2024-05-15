private Bala[] balas;
private Enemy enemy;
private Nave nave;
private Asteroide asteroide;
private int i=0;
private JoyPad joyPad;

public void setup(){
  size(800,600);
  balas= new Bala[1000];
  enemy= new Enemy(new PVector(width/2,height/7),new PVector(5,0));
  nave= new Nave(new PVector(width/2,height*6/7),new PVector(10,6));
  asteroide= new Asteroide(new PVector(width/2,0),new PVector(10,6));
  joyPad= new JoyPad();
}

public void draw(){
  background(#122B5A);
  asteroide.display();
  asteroide.move();
  enemy.display();
  enemy.move();
  nave.display();
  nave.disparar(balas);
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
/*  DISPARA CON EL CLICK IZQUIERDO*/

public void mousePressed(){
  if(mouseButton==LEFT){
    balas[i]= new Bala(new PVector(nave.getPosicionX(),nave.getPosicionY()-nave.getAlto()/2),new PVector(0,10));
    i++;
  }
}

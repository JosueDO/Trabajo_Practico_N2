private Personaje pj;
private Escenario escenario;
private SpawnerVehiculos spawnerVehiculos;
private SpawnerTroncos spawnerTroncos;
private HUD hud;



public void setup(){
  size(600,600);
  escenario= new Escenario(new PVector(0,height/16*2));
  pj= new Personaje(new PVector(width/2,height/32*30),new PVector(escenario.getAnchoBloque(),escenario.getAltoBloque()),escenario);
  spawnerVehiculos= new SpawnerVehiculos();
  spawnerVehiculos.generarVehiculos(escenario);
  spawnerTroncos=new SpawnerTroncos();
  spawnerTroncos.generarTroncos(escenario);
  hud=new HUD();

}

public void draw(){
  background(0);
  escenario.display();
  hud.mostrarHIScore();
  hud.mostrarPuntaje(pj);
  hud.mostrarVidas(pj);
  hud.mostrarTiempo();
  spawnerVehiculos.display();
  spawnerVehiculos.move();
  spawnerTroncos.display();
  spawnerTroncos.move();
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

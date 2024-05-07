private Tablero tablero;
private Dado dado;
private Texto texto;
private boolean start; // variable para controlar el inicio y final del juego

public void setup(){
  size(480,320);
  start=false;
  dado= new Dado(new PVector(width/2,height/2));
  texto= new Texto(new PVector(width*3/4,height/3));
  texto.setMensaje(dado);//el mensaje en pantalla depende del valor del dado
  tablero= new Tablero(new PVector(width/2,height/2),dado,texto);//tablero contiene dado y texto

}
public void draw(){
  background(0);
  tablero.display();
  if(start){
    dado.display();
    texto.display();
  }
}
/**  INICIARA EL JUEGO CON LA LETRA 's' Y FINALIZA CON LA MISMA TECLA
    UNA VEZ INICIADO SE DEBE USAR LA TECLA "UP" PARA CREAR NUEVOS DADOS
    AL FINALIZAR EL JUEGO SE MOSTRARAN LOS DATOS GUARDADOS **/
    
public void keyPressed(){
  if(key=='s'){
    start=!start;
    if(!start){
      tablero.mostrarDatos();
      exit();
    }
  }
  if(start){
    if(key==CODED){
      if(keyCode==UP){
        if(tablero.getIndice()<tablero.getLongitud()-1){//verifica si hay espacio en el arreglo
          dado= new Dado(new PVector(width/2,height/2));
          tablero.setDado(dado);
          texto= new Texto(new PVector(width*3/4,height/3));
          texto.setMensaje(dado);
          tablero.setTexto(texto);
        }else{
          println("NO HAY MAS ESPACIO");
        }   
      }
    }
  }
}

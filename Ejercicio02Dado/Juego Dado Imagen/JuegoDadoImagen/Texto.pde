class Texto extends GameObject{
  private String mensaje;
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Texto(){
  }
  
  /*CONSTRUCTOR SOBRECARGADO*/
  public Texto(PVector posicion){
    this.posicion=posicion;
  }
  
   /*DIBUJA EL TEXTO EN LA PARTE SUPERIOR DERECHA*/
  public void display(){
    fill(255);
    textSize(20);
    text(mensaje,posicion.x,posicion.y);
 }
 
 /*ASIGNA EL VALOR DEL MENSAJE DEPENDIENDO DEL VALOR DEL DADO*/
 public void setMensaje(Dado dado){
   if(dado.valor==1)
    mensaje="UNO";
    else if(dado.valor==2)
    mensaje="DOS";
    else if(dado.valor==3)
    mensaje="TRES";
    else if(dado.valor==4)
    mensaje="CUATRO";
    else if(dado.valor==5)
    mensaje="CINCO";
    else if(dado.valor==6)
    mensaje="SEIS";
 }
}

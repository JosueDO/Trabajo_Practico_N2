class Texto extends GameObject{
  private String mensaje;
  private PFont fuente; // almacena una fuente de letras
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Texto(){
  }
  
  /*CONSTRUCTOR SOBRECARGADO*/
  public Texto(PVector posicion){
    this.posicion=posicion;
    fuente=loadFont("AgencyFB-Bold-30.vlw");
  }
  
   /*DIBUJA EL TEXTO EN LA PARTE SUPERIOR DERECHA*/
  public void display(){
    fill(0);
    textFont(fuente);
    textSize(25);
    text(mensaje,posicion.x,posicion.y);
 }
 
 /*ASIGNA EL VALOR DEL MENSAJE DEPENDIENDO DEL VALOR DEL DADO*/
 public void setMensaje(Dado dado){
   if(dado.cara==1)
    mensaje="UNO";
    else if(dado.cara==2)
    mensaje="DOS";
    else if(dado.cara==3)
    mensaje="TRES";
    else if(dado.cara==4)
    mensaje="CUATRO";
    else if(dado.cara==5)
    mensaje="CINCO";
    else if(dado.cara==6)
    mensaje="SEIS";
 }
}

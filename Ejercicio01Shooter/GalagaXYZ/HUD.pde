class HUD{
  private PImage corazon;
  private String mensaje;
  
  /*CONSTRUCTOR*/
  public HUD(){
    corazon= loadImage("coraz.png");
    mensaje= "   x ";
  }
  
  /*MUESTRA LA CANTIDAD DE VIDAS EN LA PARTE SUP DERECHA*/
  public void mostrarCantVidas(Shooter nave){
    imageMode(CENTER);
    image(corazon,width*6/7,height/9,width/40,height/30);
    textSize(width/30);
    text(mensaje+nave.cantVidas,width*6/7,height/8);
  }
}

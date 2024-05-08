class HUD{
  private PImage fondo;
  private PImage corazon;
  private String mensaje;
  public HUD(){
    corazon= loadImage("coraz.png");
    fondo= loadImage("fondo.jpg");
    mensaje= "   x ";
  }
  public void display(byte cantVidas){
    imageMode(CENTER);
    
    image(fondo,width/2,height/2,width,height);
    image(corazon,width*6/7,height/9,width/40,height/30);
    textSize(width/30);
    text(mensaje+cantVidas,width*6/7,height/8);
  }
}

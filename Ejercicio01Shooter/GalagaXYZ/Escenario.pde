class Escenario{
  private PImage imagen;
  
  /*CONSTRUCTOR*/
  public Escenario(){
    this.imagen=loadImage("fondo.jpg");
  }
  
  /*DIBUJA EL ESCENARIO DESDE EL CENTRO*/
  public void display(){
    imageMode(CENTER);
    image(imagen,width/2,height/2,width,height);
  }
}

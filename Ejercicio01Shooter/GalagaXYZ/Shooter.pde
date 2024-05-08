class Shooter extends GameObject{
  private float ancho,alto;
  private byte cantVidas;
  
  public Shooter(){
  }
  
  public Shooter(PVector posicion){
    this.cantVidas=5;
    this.posicion=posicion;
    imagen=loadImage("nave.png");
    ancho=width/8;
    alto=height/6;
  }
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }
  public void move(int direccion){
    switch(direccion){
      case 0:
      this.posicion.y-=this.velocidad.y;
      break;
      case 1:
      this.posicion.y+=this.velocidad.y;
      break;
      case 2:
      this.posicion.x-=this.velocidad.x;
      break;
      case 3:
      this.posicion.x+=this.velocidad.x;
      break;
      default:
      break;
    }
  }
  
  public byte getCantVidas(){
    return this.cantVidas;
  }
}

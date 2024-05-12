class Personaje extends GameObject{
  private float ancho,alto;
  
  public Personaje(PVector posicion){
    this.posicion=posicion;
    ancho= width/14;
    alto= height/16;
    this.posicion.x+=ancho/2;
    imagen=loadImage("sapo.png");
  }
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,ancho,alto);
  }
  
  public void move(int direccion){
    switch(direccion){
      case 0:
      if(this.posicion.y>height/16*3){
        this.posicion.y-=this.alto;
      }
      break;
      case 1:
      if(this.posicion.y< height/16*14){
        this.posicion.y+=this.alto;
      }
      break;
      case 2:
      if(this.posicion.x<width-ancho){
        this.posicion.x+=this.ancho;
      }
      
      break;
      case 3:
      if(this.posicion.x>ancho){
        this.posicion.x-=this.ancho;
      }
      break;
      default:
      break;
    }
  }
}

class Bala extends GameObject implements IMoveable{
  
  public Bala(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("bala.png");
    this.alto=height/20;
    this.ancho=width/30;
  }
  public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
  public void  move(){
    this.posicion.y-=velocidad.y;
  }
}

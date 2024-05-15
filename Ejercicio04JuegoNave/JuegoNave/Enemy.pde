class Enemy extends GameObject implements IMoveable{
  
  public Enemy(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("enemy.png");
    this.alto=height/7;
    this.ancho=width/10;
  }
  public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
  public void move(){
    this.posicion.x+=velocidad.x;
    if(posicion.x>width-ancho/2 || posicion.x < ancho/2){
      this.velocidad.x*=-1;
    }
  }
}

class Asteroide extends GameObject implements IMoveable{
  
  public Asteroide(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("roca.png");
    this.alto=height/6;
    this.ancho=width/8;
  }
  public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
  public void move(){
    if(posicion.y<height){
      this.posicion.y+=this.velocidad.y;
    }else{
      float x=random(1,4);
      this.posicion.y=0;
      this.posicion.x=random(width);
      this.velocidad.y=random(5,10);
      this.alto=height/6*x;
      this.ancho=width/8*x;
    }
  }
}

class Asteroide extends GameObject{
  
  private float ancho,alto;
  
  public Asteroide(){
  }
  public Asteroide(PVector posicion){
    this.posicion=posicion;
    imagen=loadImage("asteroide.png");
    ancho=width/8;
    alto=height/6;
  }
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }
  public void move(int direccion){
    if(direccion==0){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
      this.posicion.x=random(width);
      this.velocidad.y=random(5,10);
    }
  }
  public float getPosicionY(){
    return this.posicion.y;
  }
}

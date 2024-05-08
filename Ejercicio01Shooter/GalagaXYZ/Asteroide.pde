class Asteroide extends GameObject{
  
  private float ancho,alto;
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Asteroide(){
  }
  
  /*CONSTRUCTOR SOBRECARGARDO*/
  public Asteroide(PVector posicion){
    this.posicion=posicion;
    imagen=loadImage("asteroide.png");
    ancho=width/8;
    alto=height/6;
  }
  
  /*DIBUJA EL ASTEROIDE DE ACUERDO A SU POSICION ACTUAL*/
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }
  
  /*ACTUALIZA LA POSICION EN Y DE LA ROCA SEGUN PARAMETRO, SI ES 0 LA ROCA CAE,
  SI ES 1 LA ROCA VUELVE AL INICIO ALEATORIAMENTE EN X*/
  public void move(int direccion){
    if(direccion==0){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
      this.posicion.x=random(width);
      this.velocidad.y=random(5,10);
    }
  }
  /*DEVUELVE LA POSICION EN Y DE LA ROCA PARA SABER CUANDO DIBUJARLA DE VUELTA AL INICIO*/
  public float getPosicionY(){
    return this.posicion.y;
  }
}

class Shooter extends GameObject{
  private float ancho,alto;
  private byte cantVidas;
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Shooter(){
  }
  
  /*CONSTRUCTOR SOBRECARGADO, SE DEFINE LA CANTIDAD DE VIDAS Y LA IMAGEN*/
  public Shooter(PVector posicion){
    this.cantVidas=5;
    this.posicion=posicion;
    imagen=loadImage("nave.png");
    ancho=width/8;
    alto=height/6;
  }
  
  /*DIBUJA LA NAVE DE ACUERDO A LA POSICION ACTUAL*/
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }
  
  /*MUEVE LA NAVE SEGUN PARAMETRO, SI ES 0 SUBE, SI ES 1 BAJA,
  SI ES 2 SE DESPLAZA A LA IZQ, SI ES 3 A LA DERECHA*/
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
}

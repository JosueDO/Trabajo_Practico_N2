class Personaje extends GameObject implements IDisplayable{
  private Escenario escenario;
  private float ancho,alto;
  private int puntaje,vidas;
  
  public Personaje(PVector posicion,PVector velocidad,Escenario escenario){
    this.escenario=escenario;
    this.velocidad=velocidad;
    this.posicion=posicion;
    this.puntaje=0;
    this.vidas=5;
    ancho= escenario.ancho/14*0.8;
    alto= escenario.alto/13*0.8;
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
        this.posicion.y-=this.velocidad.y;
      }
      break;
      case 1:
      if(this.posicion.y< height/16*14){
        this.posicion.y+=this.velocidad.y;
      }
      break;
      case 2:
      if(this.posicion.x<width-ancho){
        this.posicion.x+=this.velocidad.x;
      }
      
      break;
      case 3:
      if(this.posicion.x>ancho){
        this.posicion.x-=this.velocidad.x;
      }
      break;
      default:
      break;
    }
  }

}

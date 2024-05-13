class Tronco extends GameObject implements IDisplayable{
  private float ancho,alto;
  private Escenario escenario;
  
  public Tronco(PVector posicion,PVector velocidad,float ancho,Escenario escenario){
    this.escenario=escenario;
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.alto=escenario.altoBloque*0.8;
    this.ancho=ancho;
    this.imagen=loadImage("tronco1.png");
  }
  
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }
  public void move(int direccion){
    if(direccion==0){
      if(this.posicion.x<this.escenario.ancho){
        this.posicion.x+=this.velocidad.x;
      }else{
        this.posicion.x=this.escenario.posicion.x-this.ancho;
      }
    }else{
      if(this.posicion.x+this.ancho>this.escenario.posicion.x){
        this.posicion.x-=this.velocidad.x;
      }else{
        this.posicion.x=this.escenario.ancho;
      }
    }
  }
}

class Camion extends Vehiculo{
  public Camion(PVector posicion,PVector velocidad,Escenario escenario){
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= escenario.altoBloque*1.2;
    ancho= escenario.anchoBloque*2;
    imagen=loadImage("camion.png");
  }
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,this.ancho,this.altura);
  }
  public void move(){
    if(this.posicion.x+this.ancho>escenario.posicion.x){
      this.posicion.x-=this.velocidad.x;
    }else{
      this.posicion.x=escenario.ancho;
    }
  }
}

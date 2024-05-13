class AutoAmar extends Vehiculo{
  public AutoAmar(PVector posicion,PVector velocidad,Escenario escenario){
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= escenario.altoBloque*0.9;
    ancho= escenario.anchoBloque*1.2;
    imagen=loadImage("auto-amarillo.png");
  }
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,this.ancho,this.altura);
  }
  public void move(){
    if(this.posicion.x+this.ancho>0){
      this.posicion.x-=this.velocidad.x;
    }else{
      this.posicion.x=width;
    }
  }
}

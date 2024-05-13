class AutoRojo extends Vehiculo{
  public AutoRojo(PVector posicion,PVector velocidad,Escenario escenario){
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= escenario.altoBloque*0.8;
    ancho= escenario.anchoBloque;
    imagen=loadImage("auto.png");
  }
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,this.ancho,this.altura);
  }
  public void move(){
    if(this.posicion.x<escenario.ancho){
      this.posicion.x+=this.velocidad.x;
    }else{
      this.posicion.x=0-this.ancho;;
    }
  }
}

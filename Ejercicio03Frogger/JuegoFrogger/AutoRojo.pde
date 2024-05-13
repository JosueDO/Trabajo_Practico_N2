class AutoRojo extends Vehiculo{
  public AutoRojo(PVector posicion,PVector velocidad,Escenario escenario){
    this.escenario=escenario;
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= this.escenario.altoBloque*0.8;
    ancho= this.escenario.anchoBloque;
    imagen=loadImage("auto.png");
  }
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,this.ancho,this.altura);
  }
  public void move(){
    if(this.posicion.x<this.escenario.ancho){
      this.posicion.x+=this.velocidad.x;
    }else{
      this.posicion.x=this.escenario.posicion.x-this.ancho;;
    }
  }
}

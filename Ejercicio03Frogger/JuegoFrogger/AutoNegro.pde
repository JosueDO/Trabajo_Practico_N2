class AutoNegro extends Vehiculo{
  public AutoNegro(PVector posicion,PVector velocidad,Escenario escenario){
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= escenario.altoBloque*0.9;
    ancho= escenario.anchoBloque*1.2;
    imagen=loadImage("auto-negro.png");
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

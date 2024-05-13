class AutoAzul extends Vehiculo{
  public AutoAzul(PVector posicion,PVector velocidad,Escenario escenario){
    this.escenario=escenario;
    this.posicion=posicion;
    this.velocidad=velocidad;
    altura= escenario.altoBloque*0.8;
    ancho= escenario.anchoBloque*1.2;
    imagen=loadImage("auto-azul.png");
  }
  public void display(){
    imageMode(CORNER);
    image(imagen,this.posicion.x,this.posicion.y,this.ancho,this.altura);
  }
  public void move(){
    if(this.posicion.x+this.ancho>this.escenario.posicion.x){
      this.posicion.x-=this.velocidad.x;
    }else{
      this.posicion.x=this.escenario.ancho;
    }
  }
}

class Dado extends GameObject{
  private int alto,ancho;
  private PImage[] caras;//guarda las imagenes del dado en una arreglo
  private int valor;
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Dado(){
  }
  
  /*CONTRUCTOR SOBRECARGADO*/
  public Dado(PVector posicion){
    caras= new PImage[6];
    this.caras[0]=loadImage("uno.jpeg");
    this.caras[1]=loadImage("dos.jpeg");
    this.caras[2]=loadImage("tres.jpeg");
    this.caras[3]=loadImage("cuatro.jpeg");
    this.caras[4]=loadImage("cinco.jpeg");
    this.caras[5]=loadImage("seis.jpeg");
    this.posicion=posicion;
    this.valor=(int)random(1,7);
    this.alto=height/4;
    this.ancho=width/6;
  }
  
  /*METODO PARA DIBUJAR EL DADO SEGUN EL VALOR GENERADO*/
  public void display(){
    fill(#E6ED2B);
    imageMode(CENTER);
    if(valor==1){
      image(caras[0],this.posicion.x,this.posicion.y,ancho,alto);
    }else if(valor==2){
      image(caras[1],this.posicion.x,this.posicion.y,ancho,alto);
    }else if(valor==3){
      image(caras[2],this.posicion.x,this.posicion.y,ancho,alto);
    }else if(valor==4){
      image(caras[3],this.posicion.x,this.posicion.y,ancho,alto);
    }else if(valor==5){
      image(caras[4],this.posicion.x,this.posicion.y,ancho,alto);
    }else if(valor==6){
      image(caras[5],this.posicion.x,this.posicion.y,ancho,alto);
    }
    strokeWeight(1);
  }
  
  public int getValor(){
    return this.valor;
  }
}

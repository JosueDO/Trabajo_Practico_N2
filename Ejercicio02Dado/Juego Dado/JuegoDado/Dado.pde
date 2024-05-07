class Dado extends GameObject{
  private int alto,ancho;
  private int cara;//variable que guardara el valor aleatorio
  
  /*CONSTRUCTOR POR DEFECTO*/
  public Dado(){
  }
  
  /*CONTRUCTOR SOBRECARGADO*/
  public Dado(PVector posicion){
    this.posicion=posicion;
    this.cara=(int)random(1,7);
    this.alto=height/4;
    this.ancho=width/6;
  }
  
  /*METODO PARA DIBUJAR EL DADO SEGUN EL VALOR GENERADO*/
  public void display(){
    fill(#E6ED2B);
    rectMode(CENTER);
    strokeWeight(4);
    rect(width/2,height/2,ancho,alto,alto/8);
    strokeWeight(height/20);
    if(cara==1){
      point(width/2,height/2);
    }else if(cara==2){
      point(width/2-ancho/4,height/2+alto/4);
      point(width/2+ancho/4,height/2-alto/4);
    }else if(cara==3){
      point(width/2-ancho/4,height/2+alto/4);
      point(width/2+ancho/4,height/2-alto/4);
      point(width/2,height/2);
    }else if(cara==4){
      point(width/2-ancho/4,height/2+alto/4);
      point(width/2+ancho/4,height/2-alto/4);
      point(width/2-ancho/4,height/2-alto/4);
      point(width/2+ancho/4,height/2+alto/4);
    }else if(cara==5){
      point(width/2-ancho/4,height/2+alto/4);
      point(width/2+ancho/4,height/2-alto/4);
      point(width/2-ancho/4,height/2-alto/4);
      point(width/2+ancho/4,height/2+alto/4);
      point(width/2,height/2);
    }else if(cara==6){
      point(width/2-ancho/4,height/2+alto/4);
      point(width/2+ancho/4,height/2-alto/4);
      point(width/2-ancho/4,height/2-alto/4);
      point(width/2+ancho/4,height/2+alto/4);
      point(width/2-ancho/4,height/2);
      point(width/2+ancho/4,height/2);
    }
    strokeWeight(1);
  }
  
  public int getCara(){
    return this.cara;
  }
}

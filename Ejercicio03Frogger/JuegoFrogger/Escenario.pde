class Escenario implements IDisplayable{
  private float ancho,alto;
  private PVector posicion;
  private float anchoBloque;
  private float altoBloque;
  
  public Escenario(PVector posicion){
    this.posicion=posicion;
    ancho=width;
    alto=height/16*13;
    anchoBloque=ancho/14;
    altoBloque=alto/13;

  }
  
  public void display(){
    noStroke();
    fill(0,100,0);
    rect(posicion.x,posicion.y,ancho,alto/13);
    fill(#3AC7D6);
    rect(this.posicion.x,this.posicion.y+alto/13,ancho,alto/13*5);
    fill(155);
    rect(this.posicion.x,this.posicion.y+alto*7/13,ancho,alto*5/13);
    
    
    fill(255);
    rect(this.posicion.x,this.posicion.y+alto/13*7+4,width,4);
    rect(this.posicion.x,this.posicion.y+alto/13*12-4,width,4);
    
    fill(#AF8935);
    rect(this.posicion.x,this.posicion.y+alto/13*12,ancho,alto/13);
    rect(this.posicion.x,this.posicion.y+alto/13*6,ancho,alto/13);
  }
  
  public float getAnchoBloque(){
    return this.anchoBloque;
  }
  public float getAltoBloque(){
    return this.altoBloque;
  }
}

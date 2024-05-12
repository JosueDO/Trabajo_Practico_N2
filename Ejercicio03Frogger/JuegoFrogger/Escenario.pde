class Escenario implements IDisplayable{
  private float ancho,alto;
  
  public Escenario(){

  }
  
  public void display(){
    fill(155);
    noStroke();
    rect(0,height/16*9,width,height/16*5);
    fill(255);
    rect(0,height/16*9+4,width,4);
    rect(0,height/16*14-8,width,4);
    fill(#3AC7D6);
    rect(0,height/16*3,width,height/16*5);
    fill(#AF8935);
    rect(0,height/16*14,width,height/16);
    rect(0,height/16*8,width,height/16);
  }
}

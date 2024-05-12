/* CLASE COMPLETAMENTE DISEÑADA PARA EL CONTROL DE MOVIMIENTO*/
class JoyPad{
  private boolean upPressed, downPressed, rightPressed, leftPressed;
  
  public JoyPad(){
  }
  
  public boolean isUpPressed(){
    return upPressed;
  }
  public void setUpPressed(boolean upPressed){
    this.upPressed=upPressed;
  }
  public boolean isDownPressed(){
    return downPressed;
  }
  public void setDownPressed(boolean downPressed){
    this.downPressed=downPressed;
  }
  public boolean isRightPressed(){
    return rightPressed;
  }
  public void setRightPressed(boolean rightPressed){
    this.rightPressed=rightPressed;
  }
  public boolean isLeftPressed(){
    return leftPressed;
  }
  public void setLeftPressed(boolean leftPressed){
    this.leftPressed=leftPressed;
  }
}

class HUD{
  public void mostrarHIScore(){
    fill(255);
    String mensaje= "HI-SCORE: 10000";
    textSize(30);
    text(mensaje,width/10*6,height/15);
  }
  public void mostrarPuntaje(Personaje pj){
    fill(255,0,0);
    String mensaje = "1UP: "+pj.puntaje;
    textSize(30);
    text(mensaje,width/9,height/15);
  }
  public void mostrarVidas(Personaje pj){
    fill(0,255,0);
    String mensaje= "VIDAS x "+pj.vidas;
    textSize(25);
    text(mensaje,width/30,height-15);
  }
}

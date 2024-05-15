abstract class GameObject implements IDisplayable{
  protected PVector posicion;
  protected PVector velocidad;
  protected PImage imagen;
  protected float alto;
  protected float ancho;
  
  public float getPosicionX(){
    return this.posicion.x;
  }
  public float getPosicionY(){
    return this.posicion.y;
  }
  public float getAlto(){
    return this.alto;
  }
}

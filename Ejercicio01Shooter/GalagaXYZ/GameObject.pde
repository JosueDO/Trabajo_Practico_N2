abstract class GameObject{
  
  protected PVector posicion;
  protected PImage imagen;
  protected PVector velocidad;//atributo agregado porque sus subclases compartian el mismo atributo
  
  public abstract void display();
  public abstract void move(int direccion);
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public PVector getPosicion(){
    return this.posicion;
  }
    public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  public PVector getVelocidad(){
    return this.velocidad;
  }
}

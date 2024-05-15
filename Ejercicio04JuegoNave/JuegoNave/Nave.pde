class Nave extends GameObject{
  
  public Nave(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("nave.png");
    this.alto= height/8;
    this.ancho=width/11;
  }
  public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
   /*MUEVE LA NAVE SEGUN PARAMETRO, SI ES 0 SUBE, SI ES 1 BAJA,
  SI ES 2 SE DESPLAZA A LA IZQ, SI ES 3 A LA DERECHA*/
  public void move(int direccion){
    switch(direccion){
      case 0:
      if(posicion.y>height/2){
        this.posicion.y-=this.velocidad.y;
      }
      break;
      case 1:
      if(posicion.y<height-alto/2){
        this.posicion.y+=this.velocidad.y;
      } 
      break;
      case 2:
      if(posicion.x>ancho/2){
        this.posicion.x-=this.velocidad.x;
      }
      break;
      case 3:
      if(posicion.x<width-ancho/2){
        this.posicion.x+=this.velocidad.x;
      }
      break;
      default:
      break;
    }
  }
  
  public void disparar(Bala[] balas){
    for(Bala b:balas){
      if(b!=null){
        b.display();
      }
    }
    for(Bala b:balas){
      if(b!=null){
        b.move();
      }
    }
  }
}

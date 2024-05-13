class SpawnerVehiculos implements IDisplayable{
  
  private Camion camiones[];
  private AutoAzul autosAzules[];
  private AutoAmar autosAmar[];
  private AutoNegro autosNegros[];
  private AutoRojo autosR[];
  
  public SpawnerVehiculos(){
    camiones= new Camion[3];
    autosAzules=new AutoAzul[4];
    autosAmar= new AutoAmar[4];
    autosNegros=new AutoNegro[2];
    autosR=new AutoRojo[4];
    
  }
  public void generarVehiculos(Escenario escenario){
    float distEntCamion=(escenario.ancho+escenario.anchoBloque*2)/3;
    float distEntAutos=(escenario.ancho+escenario.anchoBloque)/4;
    float distEntAutoN=(escenario.ancho+escenario.anchoBloque)/2;
    
    camiones[0]= new Camion(new PVector(0,escenario.altoBloque*7+escenario.posicion.y),new PVector(1,0),escenario);
    camiones[1]=new Camion(new PVector(distEntCamion,escenario.altoBloque*7+escenario.posicion.y),new PVector(1,0),escenario);
    camiones[2]= new Camion(new PVector(distEntCamion*2,escenario.altoBloque*7+escenario.posicion.y),new PVector(1,0),escenario);
    
    autosNegros[0]= new AutoNegro(new PVector(escenario.anchoBloque*4,escenario.altoBloque*8+escenario.posicion.y),new PVector(3.5,0),escenario);
    autosNegros[1]= new AutoNegro(new PVector(escenario.anchoBloque*4+distEntAutoN,escenario.altoBloque*8+escenario.posicion.y),new PVector(3.5,0),escenario);
    
    autosAzules[0]= new AutoAzul(new PVector(escenario.anchoBloque,escenario.altoBloque*9+escenario.posicion.y),new PVector(2,0),escenario);
    autosAzules[1]= new AutoAzul(new PVector(escenario.anchoBloque+distEntAutos,escenario.altoBloque*9+escenario.posicion.y),new PVector(2,0),escenario);
    autosAzules[2]= new AutoAzul(new PVector(escenario.anchoBloque+distEntAutos*2,escenario.altoBloque*9+escenario.posicion.y),new PVector(2,0),escenario);
    autosAzules[3]= new AutoAzul(new PVector(escenario.anchoBloque+distEntAutos*3,escenario.altoBloque*9+escenario.posicion.y),new PVector(2,0),escenario);
    
    autosAmar[0]= new AutoAmar(new PVector(escenario.anchoBloque,escenario.altoBloque*11+escenario.posicion.y),new PVector(2,0),escenario);
    autosAmar[1]= new AutoAmar(new PVector(escenario.anchoBloque+distEntAutos,escenario.altoBloque*11+escenario.posicion.y),new PVector(2,0),escenario);
    autosAmar[2]= new AutoAmar(new PVector(escenario.anchoBloque+distEntAutos*2,escenario.altoBloque*11+escenario.posicion.y),new PVector(2,0),escenario);
    autosAmar[3]= new AutoAmar(new PVector(escenario.anchoBloque+distEntAutos*3,escenario.altoBloque*11+escenario.posicion.y),new PVector(2,0),escenario);
    
    autosR[0]= new AutoRojo(new PVector(escenario.anchoBloque,escenario.altoBloque*10+escenario.posicion.y),new PVector(2,0),escenario);
    autosR[1]= new AutoRojo(new PVector(escenario.anchoBloque+distEntAutos,escenario.altoBloque*10+escenario.posicion.y),new PVector(2,0),escenario);
    autosR[2]= new AutoRojo(new PVector(escenario.anchoBloque+distEntAutos*2,escenario.altoBloque*10+escenario.posicion.y),new PVector(2,0),escenario);
    autosR[3]= new AutoRojo(new PVector(escenario.anchoBloque+distEntAutos*3,escenario.altoBloque*10+escenario.posicion.y),new PVector(2,0),escenario);
 
  }
  
  public void display(){
    for(Camion c:camiones){
      if(c!=null){
        c.display();
      }
    }
    for(AutoAzul a:autosAzules){
      if(a!=null){
        a.display();
      }
    }
    for(AutoRojo ar:autosR){
      if(ar!=null){
        ar.display();
      }
    }
    for(AutoAmar am:autosAmar){
      if(am!=null){
        am.display();
      }
    }
    for(AutoNegro an:autosNegros){
      if(an!=null){
        an.display();
      }
    }
  }
  public void move(){
    for(Camion c:camiones){
      if(c!=null){
        c.move();
      }
    }
    for(AutoAzul a:autosAzules){
      if(a!=null){
        a.move();
      }
    }
    for(AutoAmar am:autosAmar){
      if(am!=null){
        am.move();
      }
    }
    for(AutoNegro an:autosNegros){
      if(an!=null){
        an.move();
      }
    }
    for(AutoRojo ar:autosR){
      if(ar!=null){
        ar.move();
      }
    }
  }
}

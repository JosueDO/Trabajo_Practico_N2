class SpawnerTroncos{
  private Tronco troncosCortos[];
  private Tronco troncosLargos[];
  
  public SpawnerTroncos(){
    troncosCortos=new Tronco[12];
    troncosLargos=new Tronco[6];
  }
  public void generarTroncos(Escenario escenario){
    float anchoTroncoCorto= escenario.anchoBloque*2;
    float anchoTroncoLargo= escenario.anchoBloque*3.5;
    float distEntTronCor= (escenario.ancho + anchoTroncoCorto)/4;
    float distEntTronLar= (escenario.ancho + anchoTroncoLargo)/3;
    
    troncosCortos[0]= new Tronco(new PVector(0,escenario.altoBloque+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[1]= new Tronco(new PVector(distEntTronCor,escenario.altoBloque+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[2]= new Tronco(new PVector(distEntTronCor*2,escenario.altoBloque+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[3]= new Tronco(new PVector(distEntTronCor*3,escenario.altoBloque+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[4]= new Tronco(new PVector(0,escenario.altoBloque*3+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[5]= new Tronco(new PVector(distEntTronCor,escenario.altoBloque*3+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[6]= new Tronco(new PVector(distEntTronCor*2,escenario.altoBloque*3+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[7]= new Tronco(new PVector(distEntTronCor*3,escenario.altoBloque*3+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[8]= new Tronco(new PVector(0,escenario.altoBloque*5+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[9]= new Tronco(new PVector(distEntTronCor,escenario.altoBloque*5+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[10]= new Tronco(new PVector(distEntTronCor*2,escenario.altoBloque*5+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    troncosCortos[11]= new Tronco(new PVector(distEntTronCor*3,escenario.altoBloque*5+escenario.posicion.y),new PVector(2,0),anchoTroncoCorto,escenario);
    
    troncosLargos[0]= new Tronco(new PVector(0,escenario.altoBloque*2+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    troncosLargos[1]= new Tronco(new PVector(distEntTronLar,escenario.altoBloque*2+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    troncosLargos[2]= new Tronco(new PVector(distEntTronLar*2,escenario.altoBloque*2+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    troncosLargos[3]= new Tronco(new PVector(0,escenario.altoBloque*4+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    troncosLargos[4]= new Tronco(new PVector(distEntTronLar,escenario.altoBloque*4+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    troncosLargos[5]= new Tronco(new PVector(distEntTronLar*2,escenario.altoBloque*4+escenario.posicion.y),new PVector(1,0),anchoTroncoLargo,escenario);
    
  }
  
  public void display(){
    for(Tronco tc:troncosCortos){
      if(tc!=null){
        tc.display();
      }
    }
    for(Tronco tl:troncosLargos){
      if(tl!=null){
        tl.display();
      }
    }
  }
  public void move(){
   
    for(Tronco t:troncosCortos){
      if(t!=null){
        t.move(0);
      }
    }
    for(Tronco tl:troncosLargos){
      if(tl!=null){
        tl.move(1);
      }
    }
  }
}

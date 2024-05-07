class Tablero extends GameObject{
  private color tinte;
  private int ancho,alto;
  private Dado dado;
  private Texto texto;
  private int[] datos; //almacenara todos los valores de los dados que se vayan generando
  private int indice; // controla la posicion del ultimo valor guardado
  private int longitud=10; //guarda la cantidad de valores del arreglo 

/*CONSTRUCTOR POR DEFECTO*/
  public Tablero(){
  }
  
/*CONSTRUCTOR POR SOBRECARGADO*/
  public Tablero(PVector posicion,Dado dado,Texto texto){
    indice=0;
    datos= new int[longitud];
    this.texto=texto;
    this.dado=dado;
    datos[indice]=this.dado.cara;
    this.posicion=posicion;
    tinte= color(#10C1E3);
    ancho= width*9/10;
    alto= height*2/3;
  }
  
/*DIBUJA EL TRABLERO*/
  public void display(){
    fill(tinte);
    rectMode(CENTER);
    rect(width/2,height/2,ancho,alto);
  }

/*MUESTRA LOS VALORES DE TODOS LOS DADOS*/
  public void mostrarDatos(){
    for(int i=0;i<this.indice+1;i++){
      print("Dado "+(i+1)+":  "+datos[i]+"      ");
      if((i+1)%4==0){ // genera un salto de linea cada 4 elemntos mostrados
        println("");
      }
    }
  }
  public void setDado(Dado dado){
    this.indice++;
    this.dado=dado;
    this.datos[indice]=this.dado.cara;
  }
  
  public void setTexto(Texto texto){
    this.texto=texto;
    
  }
  public int getIndice(){
    return this.indice;
  }
  public int getLongitud(){
    return this.longitud;
  }
}

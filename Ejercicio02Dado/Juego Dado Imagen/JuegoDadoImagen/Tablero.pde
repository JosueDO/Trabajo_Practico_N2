class Tablero extends GameObject{
  private int ancho,alto;
  private Dado dado;
  private Texto texto;
  private int[] datos; //almacenara todos los valores de los dados que se vayan generando
  private int indice; // controla la posicion del ultimo valor guardado
  private int longitud; //guarda la cantidad de valores del arreglo 
  private PImage imagen;

/*CONSTRUCTOR POR DEFECTO*/
  public Tablero(){
  }
  
/*CONSTRUCTOR POR SOBRECARGADO*/
  public Tablero(PVector posicion,Dado dado,Texto texto){
    imagen=loadImage("mesa.png");
    longitud=10;
    indice=0;
    datos= new int[longitud];
    this.texto=texto;
    this.dado=dado;
    datos[indice]=this.dado.valor;
    this.posicion=posicion;
    ancho= width;
    alto= height;
  }
  
/*DIBUJA EL TRABLERO*/
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,ancho,alto);
  }

/*MUESTRA LOS VALORES DE TODOS LOS DADOS*/
  public void mostrarDatos(){
    for(int i=0;i<this.indice+1;i++){
      print("Dado "+(i+1)+":  "+datos[i]+"      ");
      if((i+1)%4==0){
        println("");
      }
    }
  }
  public void setDado(Dado dado){
    this.indice++;
    this.dado=dado;
    this.datos[indice]=this.dado.valor;
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

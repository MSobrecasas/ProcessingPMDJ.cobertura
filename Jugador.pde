class Jugador{

  private PVector posicion, tamano;
  int distancia = 50;
  boolean cercano = false;
 
  
  public Jugador(){
    
    this.posicion = new PVector(50,50);
    this.tamano = new PVector(30,50);
    dibujarJugador();
  }
  
  private void dibujarJugador(){
    fill(255,0,0);
    ellipse(this.posicion.x,this.posicion.y,this.tamano.x,this.tamano.y);
  }
  
  public void mover(int direccionH, int direccionV) {
    if (!colisionBorde()){
      this.posicion.x += direccionH;
      this.posicion.y += direccionV;
    }
    dibujarJugador();
  }
  
  private boolean colisionBorde(){
  
    if (this.posicion.x <= 0 || this.posicion.x >= width - this.tamano.x ||
        this.posicion.y <= 0 || this.posicion.y >= height - this.tamano.y){
      reasignarPosicion();
      return true;
    }
    else {
      return false;
    }
 }
 
  private void reasignarPosicion(){  
    
    if (this.posicion.x <= 0 ){
      this.posicion.x = 1;
    }
    
    if (this.posicion.x >= width - this.tamano.x){
      this.posicion.x = width - this.tamano.y; 
    }
    
    if (this.posicion.y <= 0){
      this.posicion.y =1;
    }
    
    if (this.posicion.y >= height - this.tamano.y){
      this.posicion.y = height - this.tamano.y - 1;
    }
  }
  
  public void cubrir(PVector pos, PVector tam){
    if (estaCerca(pos,tam) && esMasChico(tam)){
      this.posicion.x = pos.x - this.tamano.x / 2;
      this.posicion.y = pos.y +(tam.y - this.tamano.y / 2);
      println("Esta cubierto!");
    }else{
      println("no se puede cubrir!");
    }
    
  }
  
  private boolean estaCerca(PVector pos, PVector tam){
    comprobarDistancia(pos,tam);
    if(cercano){
      println("Esta cerca");
      dibujarJugador();
      return true;
      }else{
      println("Esta Lejos");
      return false;
      }
  }
  
  private void comprobarDistancia(PVector pos, PVector tam){
    cercano = false;
    for(int i = 0; i < tam.y; i++){
      if(dist(this.posicion.x, this.posicion.y,pos.x,pos.y+i)<= this.distancia){
      cercano = true;
      break;
      }
    }
  }
    
 private boolean esMasChico(PVector tam){
    if(this.tamano.y <= tam.y){
      println("El obstaculo es mas grande!");
      return true;
      }else{
      println("El obstaculo es mas chico");
      return false;
      }
 }
}

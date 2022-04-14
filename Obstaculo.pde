class Obstaculo{
  private PVector posicion, tamano;
  
  public Obstaculo(PVector pos, PVector tam){
    this.posicion = new PVector(pos.x, pos.y);
    this.tamano = new PVector(tam.x,tam.y);
    dibujarObstaculo();
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public PVector getTamano(){
    return this.tamano;
  }
  
  private void dibujarObstaculo(){
    fill(255);
    rect(this.posicion.x,this.posicion.y,this.tamano.x,this.tamano.y);
  }
  
  
}

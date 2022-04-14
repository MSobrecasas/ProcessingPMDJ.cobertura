Jugador jugador;
int direccionH = 0;         
int direccionV = 0; 

Obstaculo obstaculo;
ArrayList <Obstaculo> obstaculos;


void setup(){
  
size(600,400);    
jugador = new Jugador();
}

void draw(){
  background(0);
  jugador.mover(direccionH,direccionV);
  crearObstaculos();
}

void keyPressed() {         
   if (key == 'a' || key =='A' ) {
            direccionH = -2;
          
        }
        if (key == 'd' || key =='D' ) {
            direccionH = 2;
           
        }
        if (key == 'w' || key =='W' ) {
            direccionV = -2;
            
        }
        if (key == 's' || key =='S' ) {
            direccionV = 2;     
        }
         if(keyCode == CONTROL){
          this.cubrir();
        }
} 


void keyReleased(){
        if (key == 'a' || key =='A' ) {
            direccionH = 0;
          
        }
        if (key == 'd' || key =='D' ) {
            direccionH = 0;
           
        }
        if (key == 'w' || key =='W' ) {
            direccionV = 0;
            
        }
        if (key == 's' || key =='S' ) {
            direccionV = 0;         
        }
        if(keyCode == CONTROL){
          
        }
}

private void cubrir(){
  for(Obstaculo o:obstaculos){
    println(o);
    jugador.cubrir(o.posicion,o.tamano);
  }
  
}
private void crearObstaculos(){
   obstaculos = new ArrayList();
   
   obstaculo = new Obstaculo(new PVector(30,50),new PVector(10,10));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(100,100),new PVector(20,40));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(150,300),new PVector(50,50));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(460,300),new PVector(10,25));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(450,50),new PVector(25,45));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(500,300),new PVector(25,55));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(250,250),new PVector(25,60));
   obstaculos.add(obstaculo);
   
   obstaculo = new Obstaculo(new PVector(300,50),new PVector(25,70));
   obstaculos.add(obstaculo);
}

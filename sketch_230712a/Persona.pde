class Persona {
  PVector pos;  // Posición actual (x,y).
  PVector destino;
  PVector vel;  // Vector Velocidad.
  float max_vel;
  float radio;  // Anchura de la persona.
  
  //Constructor
  Persona(float x1, float y1, float x2, float y2, float max, float r){
    pos = new PVector(x1, y1);
    destino = new PVector(x2, y2);
    vel = new PVector();
    max_vel = max;
    radio = r;
  }
  
  void mostrar(){
    //Se muestra la actualización de la posición
    noStroke();
    fill(255);
    ellipse(pos.x, pos.y, radio,radio);
  }
  
  void seek(){
    PVector direccion = PVector.sub(destino, pos);
    direccion.mult(max_vel);
    vel.add(direccion);
    
    vel.limit(max_vel);
    pos.add(vel);
  }
  
  void die(){
    if (pos.x > 615){
      pos.x = 100000;
    }
  }
  
}

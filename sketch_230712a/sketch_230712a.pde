Persona persona;

void setup() {
  size(700,500);
  //Personas
  //Obtener un número de Gauss Random Promedio 0 y desviación 1.0.
  float val = randomGaussian(); //
  
  float y = val * (height-30)/6 + (height)/2; // Gauss * sd + mean
  y = constrain(y, 15, height-15);  //Se limita a la persona solo aparecer entre 15 y 685
  
  persona = new Persona(15,y,700,250,5,15);      // Estas deberían ser las personas.
}

void draw() {
  background(0);
  
  //Paredes
  stroke(255);
  line(0, 0, 600, 216);   // Pared Superior.
  
  stroke(255);
  line(600, 284, 0, 500);   // Pared Inferior.
  
  //Pilares
  fill(255);
  ellipse(200,200,50,50);  // Pilar Grande.
  
  fill(255);
  ellipse(380,280,30,30);  // Pilar Chico.
  
  
  persona.mostrar();
  persona.seek();
  persona.die();
  
}

import controlP5.*;
ControlP5 cp5; 
Toggle Swt; // Creamos una variable para almacenar el controlador del botón 
void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
   Swt = cp5.addToggle("Switch 1")
        .setPosition(10,10)
        .setSize(100,40);
}

void draw(){
  background(110); //Color de fondo
  println("Valor Booleano del botón: "
          +Swt.getBooleanValue() 
          +"\n\n ");
}
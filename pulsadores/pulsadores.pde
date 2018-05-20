import controlP5.*;
ControlP5 cp5; 
Button Bt; // Creamos una variable para almacenar el controlador del botón 
void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
   Bt = cp5.addButton("Button")
        .setPosition(10,10)
        .setSize(100,40);
}

void draw(){
  background(110); //Color de fondo
  println("Valor Booleano del botón: "
          +Bt.getBooleanValue() 
          +"\n\n ");
}  
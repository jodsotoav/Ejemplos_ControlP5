
import controlP5.*;
ControlP5 cp5; 
 Textfield Txt; // Creamos una variables para almacenar el controlador de cuadro de texto

void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
  Txt = cp5.addTextfield("inputText") 
              .setPosition(10,10) 
              .setSize(200,40);   
}

void draw(){
  background(110); //Color de fondo
  println("Valor almacenado en el campo de texto: "
          +Txt.getStringValue()  //Lee el dato almacenado en la variable interna del campo de texto Txt
          +"\nContenido escrito en el campo de texto: "
          +Txt.getText()); //Lee el String de datos que se ha escrito en el campo de texto
}
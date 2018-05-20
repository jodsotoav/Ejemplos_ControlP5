import controlP5.*;
ControlP5 cp5; 
RadioButton RButton; // Creamos una variables para almacenar el controlador de botones de opciones
void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
   RButton = cp5.addRadioButton("RadioButton")
            .setPosition(10,10);

  String[] CkItems = {"Item 1", "Item 2", "Item 3"}; //Etiquetas de los elementos 
  float[] CkValue = {11,12,13}; //Valores internos de los elementos

  for(int i=0; i<CkItems.length;i++){
    RButton.addItem(CkItems[i],CkValue[i]);
  }
}

void draw(){
  background(110); //Color de fondo
  println("Valor interno del item seleccionado: "
          +RButton.getValue()  //-1 Si no hay item seleccionado
          +"\nEstado en forma del item 1: "
          +RButton.getArrayValue(0) //Lee el estado en forma númerica del item 1
          +"\n\n ");
}  
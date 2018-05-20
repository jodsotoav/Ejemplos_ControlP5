import controlP5.*;
ControlP5 cp5; 
CheckBox CBox; // Creamos una variables para almacenar el controlador de casillas de verificación

void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
  CBox = cp5.addCheckBox("CheckBox")
            .setPosition(10,10);

  String[] CkItems = {"Item 1", "Item 2", "Item 3"}; //Etiquetas de los elementos 
  float[] CkValue = {11,12,13}; //Valores internos de los elementos

  for(int i=0; i<CkItems.length;i++){
    CBox.addItem(CkItems[i],CkValue[i]);
  }
}

void draw(){
  background(110); //Color de fondo
  println("Estado del Item 1: "
          +CBox.getState(0)  //Lee el estado en forma booleana del item 1
          +"\nEstado en forma númerica método 1: "
          +CBox.getArrayValue(0) //Lee el estado en forma númerica del item 1
          +"\nEstado en forma númerica método 2: "
          +CBox.getItem(0).getValue() //Lee el estado en forma númerica del item 1
          +"\nObtener valor interno del item 1: "
          +CBox.getItem(0).internalValue() //Lee el valor interno del item 1
          +"\n\n ");
}
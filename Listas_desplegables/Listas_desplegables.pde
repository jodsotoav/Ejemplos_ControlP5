import controlP5.*;
ControlP5 cp5; 
DropdownList List; // Creamos una variables para almacenar el controlador de listas desplegables
void setup(){
  size(300,500); //Es el tamaño del lienzo o de la aplicación.
  
  cp5 = new ControlP5(this);
  
   List = cp5.addDropdownList("List")
            .setPosition(10,10);

  String[] ListItems = {"Item 1", "Item 2", "Item 3"}; //Etiquetas de los elementos 
  float[] ListValue = {11,12,13}; //Valores internos de los elementos
 List.addItems(ListItems)
       .setArrayValue(ListValue);

}

void draw(){
  background(110); //Color de fondo
  println("Item seleccionado: "
          +List.getValue() 
          +"\nValor interno del item seleccionado: "
          +List.getArrayValue((int)List.getValue()) 
          +"\n\n ");
} 
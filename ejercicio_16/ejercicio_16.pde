float x1=100, y1=100, x2=200, y2=400;
PImage linkImage; // Imagen de Link
PImage tesoroImage; // Imagen del tesoro
float distanciaTesoro=50;

void setup() {
  size(800, 600);
  linkImage = loadImage("link.gif");
  tesoroImage = loadImage("cofre.gif");
  linkImage.resize(80, 80);
  tesoroImage.resize(80, 80);
}

void draw() {
  background(135, 206, 250);
  float coordenadaX = x2 - x1; //Calcular tamaño de los catetos de link
  float coordenadaY = y2 - x1; //Calcular el tamaño de los catetos del tesoro
  
  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2)); //calcular distancia
  String textoDistancia = "la distancia es de: " + distancia; // mostrara una cadena de texto en una terminal con la distancia entre el tesoro y link
  println(textoDistancia);
  
  //mensaje ¡Power up activado! si link esta en la posicion del tesoro.
  if (distancia <= distanciaTesoro) {
    println("¡Power up activado!");
  }
  
  //imagenes
  image(tesoroImage, x2, y2);
  image(linkImage, x1, y1);
  
  //texto coordenadas mostradas en pantalla
  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

void mouseMoved(){
  x1=mouseX;
  y1=mouseY;
}

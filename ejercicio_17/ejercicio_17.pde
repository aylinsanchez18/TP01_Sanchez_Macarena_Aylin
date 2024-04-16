float a, b, c;

void setup() {
  size(400, 200);
  background(255);
  float a=1;
  float b=0;
  float c=-1;
  
  //calcular la discriminante
  float discriminante = pow(b, 2) - 4*a*c;
  
 //determinar el numero y tipo de raices
 if (discriminante > 0) {
   //dos raices reales distintas
   float x1 = (-b + sqrt(discriminante)) / (2*a);
   float x2 = (-b - sqrt(discriminante)) / (2*a);
   println("las raices son: " + " y " + x2);
 } else if (discriminante == 0) {
   //dos raices reales iguales
   float x = -b / (2*a);
   println("la raiz doble es: " + x);
 } else {
   //no hay raices reales(raices complejas)
   println("no hay raices reales");
 }
}

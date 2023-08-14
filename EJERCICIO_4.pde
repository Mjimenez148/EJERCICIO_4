// Ejercicio 4: Efecto Visual con Teclado Desarrolla un programa que muestre un efecto visual en la pantalla cuando 
// se presionen diferentes teclas del teclado. Por ejemplo, podrías hacer que aparezcan líneas o círculos de colores 
// en ubicaciones aleatorias al presionar diferentes teclas. Ejecuta el programa con varias teclas y captura imágenes de los efectos generados para el informe PDF.

void setup() {
  size(800, 600);
  background(#151414);  // Fondo blanco
}

void draw() {
  if (keyPressed) {
    if (key != CODED && key != ' ') { // asi se puede leer los tipos de teclas
      float randomX = random(width);
      float randomY = random(height);
      color randomColor = color(random(255), random(255), random(255));
      float randomSize = random(10, 50);
      
      noStroke();
      fill(randomColor);
      rect(randomX, randomY, randomSize, randomSize);
      
      fill(#FCEA17);
      textSize(24); // Tamaño del texto
      text("Por: Mónica Jiménez",570,580); 
    }
  }
}

// con la tecla a se limpiara la pantalla
void keyPressed() {
  if (key == 'a' ) {
    background(#151414);
  }
}

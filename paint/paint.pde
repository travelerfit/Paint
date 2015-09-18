import co.jimezam.util.Dialogo;
PImage  img1,img2,img3, img6, seleccion, back, r1, r2, r3, r4, r5, r6, a1, a2, a3, a4, a5, a6, v1, v2, v3, v4, v5, v6;
PImage c1, c2, c3, c4, c5, c6, q1, q2, q3, q4, q5, q6, g1, g2, g3, nue, cap, mod, cir, lin, cua, tri, esp, goma, dib, goma2,b;
Integer anct, altt, ancc, altc, alti, anci;
Boolean showi=true, pre=false, pre2=false, l=false,t=false, gom=false, imgvr=false, imgvo=false, col=false;
String a;
ArrayList <PVector> p = new ArrayList <PVector> ();
ArrayList <PVector> ll = new ArrayList <PVector> ();
//cursor fig iconos, coordenadas de colores, con relleno o sin relleno figuras.

void setup() {
cursor(CROSS);
size(650,550);   
frame.setResizable(true);
background(255);
img1 = loadImage("imagenes/guardar.png");
img2 = loadImage("imagenes/cargar.png");
img3 = loadImage("imagenes/visualizar.png");
nue = loadImage("imagenes/nuevo.png");
back = loadImage("imagenes/back.png");
r1 = loadImage("paleta/r1.png");
r2 = loadImage("paleta/r2.png");
r3 = loadImage("paleta/r3.png");
r4 = loadImage("paleta/r4.png");
r5 = loadImage("paleta/r5.png");
r6 = loadImage("paleta/r6.png"); 
a1 = loadImage("paleta/a1.png"); 
a2 = loadImage("paleta/a2.png"); 
a3 = loadImage("paleta/a3.png"); 
a4 = loadImage("paleta/a4.png"); 
a5 = loadImage("paleta/a5.png"); 
a6 = loadImage("paleta/a6.png"); 
v1 = loadImage("paleta/v1.png");
v2 = loadImage("paleta/v2.png");
v3 = loadImage("paleta/v3.png");
v4 = loadImage("paleta/v4.png");
v5 = loadImage("paleta/v5.png");
v6 = loadImage("paleta/v6.png");
c1 = loadImage("paleta/c1.png");
c2 = loadImage("paleta/c2.png");
c3 = loadImage("paleta/c3.png");
c4 = loadImage("paleta/c4.png");
c5 = loadImage("paleta/c5.png");
c6 = loadImage("paleta/c6.png");
q1 = loadImage("paleta/q1.png");
q2 = loadImage("paleta/q2.png");
q3 = loadImage("paleta/q3.png");
q4 = loadImage("paleta/q4.png");
q5 = loadImage("paleta/q5.png");
q6 = loadImage("paleta/q6.png");
g1 = loadImage("imagenes/g1.png");
g2 = loadImage("imagenes/g2.png");
g3 = loadImage("imagenes/g3.png");
cir = loadImage("imagenes/circulo.png");
cua= loadImage("imagenes/cuadrado.png");
tri = loadImage("imagenes/triangulo.png");
lin = loadImage("imagenes/linea.png"); 
goma = loadImage("imagenes/goma.png");
esp = loadImage("imagenes/espacio.png");
smooth();
}

void draw() {
  back.resize(132, 1200);
  image(back, -1, -1);
  nue.resize(40, 40);
  image(nue, 15, 30);
  img1.resize(40, 40);
  image(img1, 75, 30);

  goma.resize(40, 40);
  image(goma, 15, 310);
  img2.resize(40, 40);
  image(img2, 15, 360);
  img3.resize(40, 40);
  image(img3, 15, 410);
  esp.resize(40, 40);
  image(esp, 15, 460);
  
  lin.resize(40, 40);
  image(lin, 75, 310);
  tri.resize(40, 40);
  image(tri, 75, 360);
  cir.resize(40, 40);
  image(cir, 75, 410);
  cua.resize(40, 40);
  image(cua, 75, 460);
  

  g1.resize(20, 20);
  image(g1, 35, 260);
  g2.resize(10, 10);
  image(g2, 65, 265);
  g3.resize(5, 5);
  image(g3, 85, 268);
  
  r1.resize(20, 20);
  image(r1, 5, 90);
  r2.resize(20, 20);
  image(r2, 5, 115);
  r3.resize(20, 20);
  image(r3, 5, 140);
  r4.resize(20, 20);
  image(r4, 5, 165);
  r5.resize(20, 20);
  image(r5, 5, 190);
  r6.resize(20, 20);
  image(r6, 5, 215);
 
  v1.resize(20, 20);
  image(v1, 30, 90);
  v2.resize(20, 20);
  image(v2, 30, 115);
  v3.resize(20, 20);
  image(v3, 30, 140);
  v4.resize(20, 20);
  image(v4, 30, 165);
  v5.resize(20, 20);
  image(v5, 30, 190);
  v6.resize(20, 20);
  image(v6, 30, 215);
  
 
  a1.resize(20, 20);
  image(a1, 55, 90);
  a2.resize(20, 20);
  image(a2, 55, 115);
  a3.resize(20, 20);
  image(a3, 55, 140);
  a4.resize(20, 20);
  image(a4, 55, 165);
  a5.resize(20, 20);
  image(a5, 55, 190);
  a6.resize(20, 20);
  image(a6, 55, 215);
 
  
  c1.resize(20, 20);
  image(c1, 80, 90);
  c2.resize(20, 20);
  image(c2, 80, 115);
  c3.resize(20, 20);
  image(c3, 80, 140);
  c4.resize(20, 20);
  image(c4, 80, 165);
  c5.resize(20, 20);
  image(c5, 80, 190);
  c6.resize(20, 20);
  image(c6, 80, 215);
  
 
  q1.resize(20, 20);
  image(q1, 105, 90);
  q2.resize(20, 20);
  image(q2, 105, 115);
  q3.resize(20, 20);
  image(q3, 105, 140);
  q4.resize(20, 20);
  image(q4, 105, 165);
  q5.resize(20, 20);
  image(q5, 105, 190);
  q6.resize(20, 20);
  image(q6, 105, 215);
 
  
  
 if (mousePressed == true)
  {
    if (mouseButton == LEFT)
    {
line(pmouseX,pmouseY,mouseX,mouseY);
    }
}
 if(col!=false){
  b.resize(20, 20);
  image(b, 35, 260);
  b.resize(10, 10);
  image(b, 65, 265);
  b.resize(5, 5);
  image(b, 85, 268);
 }
  //rojos 
if ((mouseX < 25) && (mouseX > 5)  && (mouseY < 110)  && (mouseY > 90)) { 
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    { 
  stroke(#d50000);
  b=r1;
  col=true;
   }
  }
}
  
else if ((mouseX < 25) && (mouseX > 5)  && (mouseY < 125)  && (mouseY > 115)) {    
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#b71c1c);
    b=r2;
    col=true;
    }
  }
}  

else if ((mouseX < 25) && (mouseX > 5)   && (mouseY < 150)  && (mouseY > 130)) {   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#c62828);
    b=r3;
    col=true;
    }
  }
}    

else if ((mouseX < 25) && (mouseX > 5)  && (mouseY < 175)  && (mouseY > 155))  {   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#d32f2f);
      b=r4;
      col=true;
    }
  }
} 

else if ((mouseX < 25) && (mouseX > 5) && (mouseY < 200)  && (mouseY > 180)) {   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#e53935);
    b=r5;
    col=true;
    }
  }
}    

else if ((mouseX < 25) && (mouseX > 5)   && (mouseY < 225)  && (mouseY > 205)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#f44336);
    b=r6;
    col=true;
    }
  }
}      

// verdes
else if ((mouseX < 50) && (mouseX > 30) && (mouseY < 110)  && (mouseY > 90)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#1b5e20);
    b=v1;
    col=true;
    }
  }
}      
  
else if ((mouseX < 50) && (mouseX > 30) && (mouseY < 125)  && (mouseY > 115)) {   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#2e7d32);
      b=v2;
    col=true;
    }
  }
}      

else if ((mouseX < 50) && (mouseX > 30) && (mouseY < 150)  && (mouseY > 130)) {   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#388e3c);
      b=v3;
    col=true;
    }
}    
}

else if ((mouseX < 50) && (mouseX > 30) && (mouseY < 175)  && (mouseY > 155)){   
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#43a047);
      b=v4;
    col=true;
    }  
  }
}  
  
else  if ((mouseX < 50) && (mouseX > 30) && (mouseY < 200)  && (mouseY > 180)) {   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#4caf50);
      b=v5;
    col=true;
    }
  }
}  

else if ((mouseX < 50) && (mouseX > 30) && (mouseY < 225)  && (mouseY > 205)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#66bb6a);
      b=v6;
    col=true;
    }
}  
}

//azules
 
else if ((mouseX < 75) && (mouseX > 55) && (mouseY < 110)  && (mouseY > 90)){   
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#01579b);
      b=a1;
    col=true;
    }
}  
}

else if ((mouseX < 75) && (mouseX > 55) && (mouseY < 125)  && (mouseY > 115)){   
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#0277bd);
      b=a2;
    col=true;
    }  
  }
}  

else  if ((mouseX < 75) && (mouseX > 55) && (mouseY < 150)  && (mouseY > 130)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#0288d1);
      b=a3;
    col=true;
    }
  }
}  

else  if ((mouseX < 75) && (mouseX > 55) && (mouseY < 175)  && (mouseY > 155)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#039be5);
      b=a4;
    col=true;
    }
  }
}  

else if ((mouseX < 75) && (mouseX > 55) && (mouseY < 200)  && (mouseY > 180)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#03a9f4);
      b=a5;
    col=true;
    }
  }
}  

else if ((mouseX < 75) && (mouseX > 55) && (mouseY < 225)  && (mouseY > 205)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#29b6f6);
      b=a6;
    col=true;
    }
  }
}  

//varios colores 
  
else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 110)  && (mouseY > 90)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#000000);
      b=c1;
    col=true;
    }
}  
}

else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 125)  && (mouseY > 115)){   
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#ffc107);
      b=c2;
    col=true;
    }  
  }
}  

else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 150)  && (mouseY > 130)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#e91e63);
      b=c3;
    col=true;
    }
}  
}

else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 175)  && (mouseY > 155)){   
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#c51162);
      b=c4;
    col=true;
    }  
  }
}  

else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 200)  && (mouseY > 180)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#e65100);
      b=c5;
    col=true;
    }  
  }
}  

else if ((mouseX < 100) && (mouseX > 80) && (mouseY < 225)  && (mouseY > 205)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#ff5252);
     b=c6;
    col=true;  
  }  
  }
}  

// varios colores siguiente columna
else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 110)  && (mouseY > 90)){   
     if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#9e9e9e);
      b=q1;
    col=true;
    }  
  }
}  

else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 135)  && (mouseY > 115)){     
   if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
    stroke(#ce93d8);
    b=q2;
    col=true;
    }  
  }
}  

else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 160)  && (mouseY > 140)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#9c27b0);
      b=q3;
    col=true;
    }
  }
}  

else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 185)  && (mouseY > 165)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#795548);
      b=q4;
    col=true;
    }
  }
}  

else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 210)  && (mouseY > 190)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#009688);
      b=q5;
    col=true;
    }
  }
}  

else if ((mouseX < 125) && (mouseX > 105) && (mouseY < 225)  && (mouseY > 215)){   
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      stroke(#FFFFFF);
      b=q6;
    col=true;
    }
  }
}  

//Controles
//Pantalla blanca
  if ((mouseX < 45) && (mouseX > 15) && (mouseY < 60)  && (mouseY > 30)) {
    if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      background(255); 
 }
  }
      }

//Guardar imagen
 if ((mouseX < 105) && (mouseX > 75)  && (mouseY < 60)  && (mouseY > 30)) {
   if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      save("x.png");
   //image(myImage,0,0);
    File imagen=new File("imagen.jpg");
    selectOutput("Guadar imagen en","guardarImagen",imagen); 
  }
 }
 }
 
     if ((mouseButton == RIGHT) &&(pre!=false))
    {
    pre=false; 
    }
    
    if ((mouseButton == RIGHT) &&(pre2!=false))
    {
    pre2=false; 
    }
    
//Cuadrado
 if(pre!=false){
       if (mousePressed == true)
  {
   if (mouseButton == LEFT)
    {
      rect(mouseX,mouseY,anct,altt);
    }
  }  
 }
// circulo
 if(pre2!=false){
       if (mousePressed == true)
  {
    if (mouseButton == LEFT)
    {
       
      ellipse(mouseX,mouseY,ancc,altc);  
    }
  }  
 }
 
//Línea 
if ((mouseX < 115) && (mouseX > 75) && (mouseY < 350)  && (mouseY > 310)){
           if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      l=true;  
  }
  }
}

//Triangulo
if ((mouseX < 115) && (mouseX > 75) && (mouseY < 400)  && (mouseY > 360)){
    if (mouseButton == RIGHT){
    {
      t=true;
    }  
  }
}

//Circulo
if ((mouseX < 115) && (mouseX > 75) && (mouseY < 450)  && (mouseY > 410)){
  if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
  pre2=true;
  ancc = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el ancho (diámetro) en pixeles"));
  altc = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el alto (diámetro) en pixeles"));
  delay(1000);  
  }
}
}

//Cuadrado
if ((mouseX < 115) && (mouseX > 75) && (mouseY < 500)  && (mouseY > 460)){
        if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      pre=true;
     anct = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el ancho en pixeles"));
     altt = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el alto en pixeles"));
     delay(1000); 
    }  
  }
}

//Goma
if ((mouseX < 55) && (mouseX > 15) && (mouseY < 350)  && (mouseY > 310)){
    if (mouseButton == RIGHT)
    { 
   gom = true;
   goma2=loadImage("imagenes/goma2.png");
   cursor(goma2, 15, 20);   
    }
}

if(gom!=false){
   if (mousePressed == true)
  {
    if (mouseButton == LEFT)
    { 
    strokeWeight(30);  
    stroke(#FFFFFF);
    }
  }
}
  
  
//Cargar imagen
 if ((mouseX < 55) && (mouseX > 15) && (mouseY < 400)  && (mouseY > 360)){
       if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
        save("imagen.png");
   selectInput("Selecciona una imagen:", "seleccionarImagen");
    }
    }
}
 
//Visualizar imagen
if ((mouseX < 55) && (mouseX > 15) && (mouseY < 450)  && (mouseY > 410)){ 
   if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
     if(seleccion != null){
     int res = Dialogo.confirmar("Mensaje", "¿Deseas redimensionar la imágen?");
     if (res==0){
        anci = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el ancho de la imagen en pixeles"));
        alti = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el alto de la imagen en pixeles"));
        seleccion.resize(anci,alti);
        imgvr=true;
     }else{
        imgvo=true;
     }
     }
     else{
     println("No hay imágen");
     }
    }
}
}

//Colocar imagen
if(imgvr!=false){
    if (mouseButton == LEFT)
    { 
      image(seleccion, mouseX, mouseY);  
  }
}

if(imgvo!=false){
   if (mousePressed == true)
  {
    if (mouseButton == LEFT)
    {
      image(seleccion, mouseX, mouseY);  
    }
  }
}


//Espacio de trabajo
if ((mouseX < 55) && (mouseX > 15) && (mouseY < 500)  && (mouseY > 460)){ 
       if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
  int res = Dialogo.confirmar("Mensaje", "¿Deseas cambiar el tamaño del espacio de trabajo?"); 
  
  if(res==0){
   Integer anch = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el tamaño de ancho (en pixeles)"));
   Integer alt = Integer.parseInt(Dialogo.preguntar("Mensaje", "Introduce el tamaño de alto (en pixeles)"));
   save("x.png");
   if((anch>=650)&&(alt>=550)){
   cap = loadImage("x.png");  
   mod = cap.get(132,0,width-132,height); 
   mod.save("cap.png"); 
   dib = loadImage("cap.png");
   size(anch, alt);
   image(dib, 133, 0);
    }else{
      Dialogo.mostrar("Mensaje", "El ancho mínimo es 650 pixeles y el alto mínimo es 550 pixeles");
    }
  }else{
   save("x.png");  
   cap = loadImage("x.png");  
   mod = cap.get(132,0,width-132,height); 
   mod.save("cap.png"); 
   dib = loadImage("cap.png");
   size(displayWidth, displayHeight);
   image(dib, 133, 0);
 
  }
    }
  }
 }
 
//Grosor 
   if ((mouseX < 60) && (mouseX > 35)  && (mouseY < 280)  && (mouseY > 260)) {  
          if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      strokeWeight(20); //define ancho de linea 
   cursor(CROSS);
   }
  }
   };
   
if ((mouseX < 75) && (mouseX > 65)  && (mouseY < 275)  && (mouseY > 265)) {  
          if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      strokeWeight(10); //Define ancho de línea 
   cursor(CROSS); 
    }
  }
   };
   
if ((mouseX < 90) && (mouseX > 85)  && (mouseY < 273)  && (mouseY > 268)) {  
          if (mousePressed == true)
  {
    if (mouseButton == RIGHT)
    {
      strokeWeight(3);
       cursor(CROSS);
 }
   }
    };
 
  }
  
    void mousePressed() {
      if ((mouseButton == RIGHT) &&(imgvo!=false))
    {
     imgvo=false; 
    }
    
if ((mouseButton == RIGHT) &&(imgvr!=false))
    {
     imgvr=false; 
    }
          if((mouseButton == RIGHT)&&(gom!=false))
    {
      gom=false;
      stroke(#000000);
       strokeWeight(1); 
       cursor(CROSS);
       b=c1;
  col=true;
    }
    
      if(l!=false){
       if (mouseButton == LEFT)
    {
      PVector lm = new PVector(mouseX, mouseY);
      ll.add(lm);
      if (ll.size() == 2) {
 
      beginShape(LINES);
      for (PVector nl : ll){
        vertex(nl.x, nl.y);
      }
      endShape();
      ll.clear();
     
      }
    }
      }
     
    if ((mouseButton == RIGHT) &&(l!=false))
    {
    l=false; 
    }
  
    if(t!=false){
       if (mouseButton == LEFT)
    {
      PVector m = new PVector(mouseX, mouseY);
      p.add(m);
      if (p.size() > 2) {
 
      beginShape(TRIANGLES);
      for (PVector n : p){
        vertex(n.x, n.y);
      }
      endShape();
      p.clear();
        
      }
    }
  
    if ((mouseButton == RIGHT) &&(t!=false))
    {
    t=false; 
    }
 
    }
 }
 
 
void guardarImagen(File imagen){   
  if (imagen != null) {
  cap = loadImage("x.png");
  mod = cap.get(132,0,width-132,height);  
  mod.save(imagen.getAbsolutePath() );
  Dialogo.mostrar("Mensaje", "Imagen guardada correctamente");
  }
  else
  {
   println("Selecciono cancelar"); 
  }
}

void seleccionarImagen(File imagen) {
  if (imagen != null) {
    seleccion = loadImage(imagen.getAbsolutePath());
  }
  else{
  println("Selecciono cancelar");
  }
}
 

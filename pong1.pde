import processing.sound.*;
int puntos1,puntos2,cx,cy,rad,incx,incy,p1x,p1y,p2x,p2y,direct;
//Se recomienda bajar el sonido de la aplicación
SoundFile sonido;
//Declaración de las variables iniciales
void setup(){
 size(500,500); 
 cx = 16;        
 cy=height/4;
 incx=3;        //Velocidad horizontal de la pelota
 incy=0;        //Velocidad vertical de la pelota
 rad = 30;      //diametro de la esfera
 p1x=10;        
 p1y=200;       //Coordenadas de la paleta 1
 p2x=480;
 p2y=200;       //Coordenadas de la paleta 2
 direct = 0;    //Componente usado para la dirección
 puntos1=0;     //Puntos del jugador 1
 puntos2=0;     //Puntos del jugador 2
 sonido =new SoundFile(this,"sonido1.wav");
}
//Método encargado de inicializar, calcular los puntos y las colisiones de las esferas.
void draw(){
//Inicializamos las paletas, la esfera y los marcadores
  background(128);
  text("Jugador1:",10,10);
  text("Jugador2:",10,25);
  text("Teclas jugador 1: q a",100,10);
  text("Teclas jugador 2: o p",100,25);
  text(puntos2,65,25);
  text(puntos1,65,10);
//Control de los marcadores
  if(puntos1 == 4 || puntos2 == 4){
    
    if(puntos1 == 4){
      text("JUGADOR 2 GANA",200,230);
    }else{
      text("JUGADOR 1 GANA",200,230);
    }
    stop();
  }
//Recalculo del movimiento y posicion de la esfera
  circle(cx,cy,30);
  cx=cx+incx;
  cy= cy+incy;
//Control de cuando se marca un "GOL"
  if(cx+rad/2 > height){
    marcador(2);
    delay(1000);
  }
  if(cx - rad/2 < 0){
    marcador(1);
    delay(1000);
  }
//Control de colisiones con las paletas, y sus cálculos de movimientos correspondientes
  if(cy+rad/2 > 500 || cy - rad/2 < 0){
    incy = -incy;
  }
  if(p1y+45 > cy && p1y < cy ){
    if(cx -rad/2 < p1x){
      direccion();
      if(direct != 0){
        incy = direct;
      }  
      incx = -incx;
    }
  }
  if(p2y+45 > cy && p2y < cy ){   
    if(cx + rad/2 > p2x){
      direccion();
      if(direct != 0){
        incy = direct;
      }  
      incx = -incx;
    }
  }
 
  
  paleta();
  posicion();
  posicion2();
}
void paleta(){
 rect(p1x,p1y,10,45);
 rect(p2x,p2y,10,45);
}
//Método para calcular las componentes verticales dela dirección
void direccion(){
 if(keyPressed){
   if(key=='q'){
       direct = -1;
   }
   if(key == 'a'){
      direct = 1;
   }
   if(key=='o'){
       direct = 1;
   }
   if(key == 'p'){
      direct = -1;
   }
 }
 
}
//Método para calcular la posición de la paleta del jugador 1
void posicion(){
  if(keyPressed){
     if(key=='q'){
       p1y=p1y-4;
     }
     if(key == 'a'){
       p1y=p1y+4;
     }
     if( p1y+25 > 500){
       p1y= 475;
     }
     if( p1y < 0){
       p1y= 0;
     }
  }
}
//Método para calcular la psoción de la paleta del jugador 2
void posicion2(){
  if(keyPressed){
     if(key=='p'){
       p2y=p2y-4;
     }
     if(key == 'o'){
       p2y=p2y+4;
     }
     if( p2y+25 > 500){
       p2y= 475;
     }
     if( p2y < 0){
       p2y= 0;
     }
  }
}
//Método para actualizar el marcador y resetear las posiciones de los elementos
void marcador(int aux){
  if(aux==1){
    puntos2++;
    cx=250;
    cy=height/4;
    incx = 3;
    incy = 0;
    p1y=200;
    p2y=200;
    sonido.play();

  }
  if(aux==2){
    puntos1++;
    cx=250;
    cy=height/4;
    incx = -3;
    incy = 0;
    p1y=200;
    p2y=200;
    sonido.play();
  }

}

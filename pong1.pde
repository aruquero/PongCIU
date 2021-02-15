int puntos1,puntos2,cx,cy,rad,incx,incy,p1x,p1y,p2x,p2y,direct;

void setup(){
 size(500,500); 
 cx = 16;
 cy=height/4;
 incx=3;
 incy=0;
 rad = 30;
 p1x=10;
 p1y=200;
 p2x=480;
 p2y=200;
 direct = 0;
 puntos1=0;
 puntos2=0;
}

void draw(){
  background(128);
  text("Jugador1:",10,10);
  text("Jugador2:",10,25);
  text(puntos2,65,25);
  text(puntos1,65,10);
  if(puntos1 == 2 || puntos2 == 2){
    
    if(puntos1 == 7){
      text("JUGADOR 2 GANA",200,230);
    }else{
      text("JUGADOR 1 GANA",200,230);
    }
    stop();
  }
  circle(cx,cy,30);
  cx=cx+incx;
  cy= cy+incy;
  if(cx+rad/2 > height){
    marcador(2);
    delay(1000);
  }
  if(cx - rad/2 < 0){
    marcador(1);
    delay(1000);
  }
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
void direccion(){
 if(keyPressed){
   if(key=='q'){
       direct = -1;
   }
   if(key == 'a'){
      direct = 1;
   }
 }
 
}
void posicion(){
  if(keyPressed){
     if(key=='q'){
       p1y=p1y-4;
     }
     if(key == 'a'){
       p1y=p1y+4;
     }
     if( p1y+25 > 500){
       p1y= 450;
     }
     if( p1y < 0){
       p1y= 0;
     }
  }
}
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

void marcador(int aux){
  if(aux==1){
    puntos2++;
    cx=250;
    cy=height/4;
    incx = 3;
    incy = 0;

  }
  if(aux==2){
    puntos1++;
    cx=250;
    cy=height/4;
    incx = -3;
    incy = 0;
  }

}

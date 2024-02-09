float handW=50;
float handH=35;
float handL=25;
float finger1W=12.5;
float finger1H=30;
float finger1L=5;
float finger2W=10;
float finger2H=13;
float finger2L=4;
float finger3W=8;
float finger3H=8;
float finger3L=3.5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angleDirection=1;
float dif0 = 1;
float dif1 = 1;
float dif2 = 1;
float dif3 = 1;


void setup(){
  size(640,640,P3D);
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  noStroke();
}

void draw(){
  
  background(255);
  
  if(keyPressed){
     
    if(key=='x'){
      angle0=angle0+dif0;
    }
    if(key=='X'){
      angle0=angle0-dif0;
    }
    
    
    if(key=='y'){
      angle1=angle1-dif1;
    }
    if(key=='Y'){
      angle1=angle1+dif1;
    }
    
    
    if(key=='z'){
      angle2=angle2-dif2;
    }
    
    if(key=='Z'){
      angle3=angle3-dif3;
    }
    
    
    
    
    
  }
  
  
  
  //handを作る
rotateZ(radians(angle0));
  //go to center of base
  translate(0,0,handH/2);
  fill(255,208,160);
  box(handH,handW,handL);
  
  //指を生やす
  translate(-15,0,handL/2-finger1L/2);
  rotateY(radians(angle1));
  
  translate(-handH/2,handW/2-finger1W/2,0);
  fill(255,208,160);
  box(finger1H,finger1W,finger1L);
  
  //指2
  translate(-finger1H/2,0,0);
  rotateY(radians(angle2));
  translate(-finger2H/2,0,0);
  fill(255,208,160);
  box(finger2H,finger2W,finger2L);
  
  
  //指ラスト
  translate(-finger2H/2,0,0);
  rotateY(radians(angle3));
  translate(-finger3H/2,0,0);
  fill(255,208,160);
  box(finger3H,finger3W,finger3L);
}

  

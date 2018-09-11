
void setup(){
    size(900,900);
}
void draw(){
    background(0,0,0);
    sky();
    tower();
    theEye();
}
int t = 5;
float x=0;
float y=0;
float z=1.15;
float p=1.25;
int o = 500;
void theEye(){
   fill(252,155,30);
   ellipse(450,90,100*z,95*z);
   fill(0,0,0);
   ellipse(450 + x,90,15,70*z);
   x=x+0.25+y;
   z=z*1.0005;
   if (x>15){
   y=-0.5;
   }
   if (x<-15){
   y=0;
   }
   if (z>1.2){
     z=1.05;
   }
}
void tower(){
   fill(35,25,30);
   rect(350,200,200,800);
   triangle(360,200,360,50,420,200);
   triangle(540,200,540,50,480,200);
}
void sky(){
   fill(252,30,30);
   noStroke();
   ellipse(100,400,10*p,10*p);
   p=p+0.25;
}

void setup(){
  size(800,600);
}
void draw(){
  for(int i = 50; i < width; i += 50){
    line(i,0,i,height - 50);
  }
    for(int i = 50; i < height; i += 50){
    line(50,i,width,(i));
  }
}

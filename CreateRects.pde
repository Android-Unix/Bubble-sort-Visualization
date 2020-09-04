class CreateRects{
  float heightOfRects;
  
  void rects(float posx , float posy , float b , float h){
    rect(posx , posy , b , h);
  }
  
  void fillColor(int colorcode){
    fill(0 , 0 , colorcode);
  }
  
  void fillColor(int c1 , int c2 , int c3){
    fill(c1 , c2 ,c3);
  }
}


int i = 0 , j = 0;
CreateRects[] rects;

float[] values;

int breadth = 15;

void setup(){
  size(600 , 400);
  
  values = new float[width / breadth];
  rects = new CreateRects[width / breadth];
  for(int i = 0; i < width / breadth; i++){
      rects[i] = new CreateRects();
      values[i]  = random(height);
  }
}


void draw(){  
 
  fill(0 , 0 , 50);
  background(255);

  //creating random height rectangles
  for(int k = 0; k < values.length; k++){
    stroke(0);
    rects[k].fillColor(0 , 100 , 10);
    rects[k].rects(k * breadth, height , breadth , values[k] - height);
  }
  
  //colouring sorted (bubbled) rectangle
  for(int k = values.length - i - 1; k >= 0; k--){
    stroke(0 , 255 ,0);
    rects[k].fillColor(50);
    rects[k].rects(k * breadth, height , breadth , values[k] - height);
  }
  
    //cursor1(red)
    fill(255 , 0 , 0);
    rect(j * breadth, height , breadth , values[j] - height);
      
    float x1 = values[j];
    float x2 = values[j + 1];
    
    if(x1 < x2){
      swap(values , j , j + 1);
      if(j != 0)
        delay(100);
    }
    if(i < values.length){
      
      j = j + 1;
      //cursor2 (red)--compare cursor1 with cursor2
      fill(255 , 0 , 0);
      rect(j * breadth, height , breadth , values[j - 1] - height);
      if(j >= values.length - i - 1){
        println(height - values[values.length - i - 1]);
        j = 0;
        i += 1;
    }
  }
  else
  {
    println("finished");
    stroke(0);
    fill(0 , 100 , 10);
    rects[0].rects(0 * breadth, height , breadth , values[0] - height);
    noLoop();
  } 
}

void swap(float[] arr , int index1 , int index2){
  float temp = arr[index1];
  arr[index1] = arr[index2];
  arr[index2] = temp;
}

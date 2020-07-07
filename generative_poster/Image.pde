class Image {                                                                   
  float q;                                                                    
  PShape square, triangle_1, triangle_2;
  float xpos;
  float ypos;
  float[]rVal={0, 0.5, 1, 1.5}; 
  float[]r2Val={0.5, 1}; 
  float[]r3Val={0, 1.5}; 
  float rpos;
  float prevC;

  Image(float tempxpos, float tempypos) {                                                                     
    xpos = tempxpos;
    ypos = tempypos;

    q = width/n;
  }
  void display() {  
    translate(xpos, ypos);    
    rotate(rpos);
    imageMode(CENTER);
    image(img, 0, 0, q, q);
  }
  void rotateRandom() {
    
    int index = int(random(rVal.length));  
    int index2 = int(random(r2Val.length));  
    int index3 = int(random(r3Val.length)); 

    rpos=1.5*PI;//rpos+(rVal[index]*PI);
    prevC = rpos/PI;
    
    print("rpos = ");
    println(rpos/PI);
    
    print("prevC = ");
    println(prevC);

 
    if (prevC == 0) {
      rpos = (r2Val[index2]*PI);
    }
    if (prevC == 1.5) {
      rpos = (r2Val[index2]*PI);
    }
    if (prevC == 0.5) {
      rpos = (r3Val[index3]*PI);
    }
    if (prevC == 1) {
      rpos = (r3Val[index3]*PI);
    }
  }
}

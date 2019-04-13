class Player {
  float x = 0;
  float y = 500;
  void display() {
    fill(0);
    rect(x, y, 50, 50);
  }


  void move() {
    if (key == 'w') {
      y-=6;
    }
    if (key == 'a') {
      x-=6;
    }
    if (key == 's') {
      y+=6;
    }
    if (key == 'd') {
      x+=6;
    }
    if (key == 't') {
      println(x+","+y);
    }
  }
}

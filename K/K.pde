Player player;
Barrier barrier;
float a = 498;
float b = 350;
Boolean gameover = false;
void setup() {
  size(600, 600);
  player = new Player();
  barrier = new Barrier();
}
void draw() {
  background(255, 255, 255, 0);
  barrier.barriers();
  player.display();
  fill(0, 255, 0);
  rect(a, b, 50, 50);
  fill(0);
  textSize(10);
  text("L",a+30,b+30);
  if (player.x >= 100 && player.x <= 150) {
    if (player.y >= 50) {
      player.x = 0;
      player.y = 500;
    }
  }
  if (player.x >= 250 && player.x <= 300) {
    if (player.y <= 476) {
      player.x = 0;
      player.y = 500;
    }
  }  
  if (player.x >= 402 && player.x <= 450) {
    if (player.y >= 50) {
      player.x = 0;
      player.y = 500;
    }
  } 
  if (player.x < 0 || player.x > width-50) {
    player.x = 0;
    player.y = 500;
  }
  if (player.y < 0 || player.y > height-50) {
    player.x = 0;
    player.y = 500;
  }
  if(gameover == true){
   background(0);
        textSize(80);
        text("GAME WON!", 100, 250);
  }
}

void keyPressed() {
  player.move();
}
void keyTyped() {
  if (key == 'l') {
    if (player.x == a) {
      if (player.y == b) {
       gameover = true;
      }
    }
  }
}

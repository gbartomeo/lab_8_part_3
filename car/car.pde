void setup() {
  size(500, 500);
}

int x = 200, mountain_x = 0, mountain_speed = -1, tree_x = 0, tree_speed = -3;

void draw() {
  noStroke();

  background(180, 200, 240);

  // draw the ground
  fill(110, 170, 120);
  rect(0, 310, width, height - 310);

  // draw the mountain
  fill(170, 170, 170);
  triangle(30 + mountain_x, 310, 330 + mountain_x, 310, 180 + mountain_x, 100);

  // draw a tree
  fill(77, 48, 48);
  rect(530 + tree_x, 270, 20, 40);
  fill(2, 193, 32);
  triangle(500 + tree_x, 270, 580 + tree_x, 270, 540 + tree_x, 200);

  // draw a yellow car
  fill(150, 150, 150);
  ellipse(x + 30, 320, 90, 20);

  fill(250, 250, 0);
  rect(x, 300, 80, 20);
  rect(x + 10, 285, 60, 15);

  fill(150, 170, 200);
  rect(x + 47, 287, 20, 10);
  rect(x + 25, 287, 20, 10);

  fill(0, 0, 0);
  ellipse(x + 20, 320, 20, 20);
  ellipse(x + 60, 320, 20, 20);

  mountain_x += mountain_speed;
  tree_x += tree_speed;

  if (mountain_x <= -330)
    mountain_x = 520;

  if (tree_x <= -560)
    tree_x = 50;

  // a comment
}


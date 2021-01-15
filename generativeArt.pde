Ripple defaultRipple;
ArrayList<Ripple> ripple = new ArrayList<Ripple>(); // クリックで追加するオブジェクトのArrayList

void setup() {
  size(600, 400);
  background(0);
  colorMode(HSB);
  // 初期表示用のrippleオブジェクトを中心にセット
  defaultRipple = new Ripple(width/2, height/2, 100, floor(random(360)));
}

void draw() {
  // 初期表示用のrippleオブジェクト表示
  defaultRipple.display() ;
  // クリックで追加されたrippleオブジェクト表示
  for (int i = 0; i < ripple.size(); i++) {
    ripple.get(i).display() ;
  }
}

// クリックで追加するrippleオブジェクト
void mousePressed() {
  ripple.add(new Ripple(mouseX, mouseY, floor(random(50, 100)), floor(random(360))));
}

// @todo ランダムな時間感覚で追加されるrippleオブジェクト

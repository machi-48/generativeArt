class Ripple {
  float x; // X座標
  float y; // Y座標
  float size; // 円の大きさ
  int hue; // 色相
  Ripple(float _x, float _y, float _size, int _hue) {
    // コンストラクタをもっと楽に書ける方法あるんでしょうか
    x =_x;
    y = _y;
    size = _size;
    hue = _hue;
  }
  // 表示メソッド
  void display() {
    if (size < width * 3) {
      noFill();
      stroke(hue, 100, 100);
      circle(x, y, size);
      move();
    } else {
      noStroke();
    }
  }
  // 波紋のように円の中心から徐々広がるアニメーションメソッド
  // @todo 外側にいくほど円を大きくしたい
  void move() {
    fill(0, 0, 0, 4);
    noStroke();
    rect(0, 0, width, height);
    blendMode(ADD);
    colorMode(HSB, 360, 100, 100, 100);
    stroke(hue, 40, 100);
    blendMode(BLEND);
    noFill();
    circle(x, y, size);
    size += 10;
  }
}

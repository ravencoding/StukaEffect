public ImgList imgList;
private StukaEffect stukaEffect;

void setup(){
  frameRate(30);
  size(480, 480);
  imgList = new ImgList();
  stukaEffect = new StukaEffect();
  
  //test.
  stukaEffect.setEffect(Const.IMAGE_EXPLODE, 0, 0);
  stukaEffect.setEffect(Const.IMAGE_EXPLODE, 100, 0);
  stukaEffect.setEffect(Const.IMAGE_EXPLODE, 200, 0);
  stukaEffect.setEffect(Const.IMAGE_MAGIC, 300, 0);
  
  //描画時のサイズ指定ありの場合.
  stukaEffect.setEffect(Const.IMAGE_EXPLODE, 380, 380, 50);
}


void draw(){
  background(100);
  stukaEffect.effectPlay();
}

void mouseReleased() {
  stukaEffect.setEffect(Const.IMAGE_SLASH, mouseX, mouseY);
}



void keyPressed() {
  if (key == '1'){
    stukaEffect.setEffect(Const.IMAGE_EXPLODE, mouseX, mouseY);
  }else if (key == '2'){
    stukaEffect.setEffect(Const.IMAGE_SLASH, mouseX, mouseY);
  }else if (key == '3'){
    stukaEffect.setEffect(Const.IMAGE_MAGIC, mouseX, mouseY);
  }else if (key == '4'){
    stukaEffect.setEffect(Const.IMAGE_EXPLODE, mouseX, mouseY, 500);
  }
}

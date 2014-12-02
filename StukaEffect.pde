public ImgList imgList;
private EffectManager effectMgr;

void setup(){
  frameRate(30);
  size(480, 480);
  imgList = new ImgList();
  effectMgr = new EffectManager();
  
  //test.
  effectMgr.setEffect(Const.IMAGE_EXPLODE, 0, 0);
  effectMgr.setEffect(Const.IMAGE_EXPLODE, 100, 0);
  effectMgr.setEffect(Const.IMAGE_EXPLODE, 200, 0);
  effectMgr.setEffect(Const.IMAGE_MAGIC, 300, 0);
}


void draw(){
  background(100);
  effectMgr.effectPlay();
}

void mouseReleased() {
  effectMgr.setEffect(Const.IMAGE_SLASH, mouseX, mouseY);
}



void keyPressed() {
  if (key == '1'){
    effectMgr.setEffect(Const.IMAGE_EXPLODE, mouseX, mouseY);
  }else if (key == '2'){
    effectMgr.setEffect(Const.IMAGE_SLASH, mouseX, mouseY);
  }else if (key == '3'){
    effectMgr.setEffect(Const.IMAGE_MAGIC  , mouseX, mouseY);
  }
}

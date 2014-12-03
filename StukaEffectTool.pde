/*
 * StukaEffectTool.pde
 *
 * StukaEffectの実装例のためのファイル.
 * StukaEffectを導入する時は、このファイルは不要.
 */


public ImgList imgList;
private StukaEffect stukaEffect;

void setup(){
  frameRate(30);
  size(480, 480);
  imgList = new ImgList();
  stukaEffect = new StukaEffect();
  //imageMode(CENTER);//座標をエフェクト画像の中心にする場合はCENTERを指定する.
  
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
  //stukaEffect.setEffect(Const.IMAGE_EXPLODE, (int)random(width), (int)random(height), (int)random(100)+20);
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

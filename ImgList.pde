public class ImgList{
  public PImage effectImages[] = new PImage[Const.EFFECT_NAMES.length];
  
  public ImgList(){
    initImg();
  }
  
  public PImage getImage(int imgID){
    return effectImages[imgID];
  }
  
  private void initImg(){
    for(int i = 0; i < Const.EFFECT_NAMES.length; i++){
      effectImages[i] = loadImage(Const.EFFECT_NAMES[i] + ".png");
    }
  }
  
  public PImage getEffectImg(int imgID){
    return this.effectImages[imgID];
  }
}

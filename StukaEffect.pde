public class StukaEffect {
  ArrayList <EffectAnimation>effectList;

  public StukaEffect() {
    this.effectList = new ArrayList();
  }

  /*
   * 画像IDと座標でエフェクトを生成して、エフェクト描画キューに入れる.
   */
  public void setEffect(int imgID, int posx, int posy) {
    EffectAnimation effect = new EffectAnimation();
    effect.setUp(imgID, posx, posy);
    this.effectList.add(effect);
  }
  
  /*
   * 画像IDと座標と描画時のCHIPサイズを指定してエフェクトを生成し、エフェクト描画キューに入れる.
   */
  public void setEffect(int imgID, int posx, int posy, int chip) {
    EffectAnimation effect = new EffectAnimation();
    effect.setUp(imgID, posx, posy, chip);
    this.effectList.add(effect);
  }


  /*
   * effectListに追加されているエフェクトを1フレームだけ描画する。
   */
  public void effectPlay() {
    if (this.effectList.size() > 0 ) {
      for (int i=0; i < this.effectList.size (); i++) {
        this.effectList.get(i).draw();
      }
      effectReflesh();
    }
  }

  /* 
   * 再生が終了したエフェクトをArrayListからremoveする.
   */
  private void effectReflesh() {
    for (int i = 0; i < this.effectList.size (); i++) {
      if (this.effectList.get(i).stateId == 0) {
          EffectAnimation tmp = this.effectList.get(i);
          this.effectList.remove(i);
      }
    }
  }
}

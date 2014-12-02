public class EffectAnimation {
  public Effect stateList[] = {
    new NonEffect(), new Effect()//エフェクト再生後状態, エフェクト描画中状態.
    };
    private State state;
  public int stateId;

  public EffectAnimation() {
    stateId = 1;
    state = stateList[stateId];
  }

  /*
   * drawとoperatorをひとまとめにしている.
   */
  public void draw() {
    state.draw();
    stateId = state.operator();
    state = stateList[stateId];
  }
  /*
   * EffectクラスのsetImage()とsetPosition()に委譲している.
   */
  public void setUp(int imgID, int posx, int posy) {
    stateList[1].setImage(imgID);
    stateList[1].setPosition(posx, posy);
  }
  public int getX() {
    return stateList[1].getX();
  }
  public int getY() {
    return stateList[1].getY();
  }
}

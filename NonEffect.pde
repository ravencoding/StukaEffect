/*
 * エフェクト再生終了時に状態遷移するState実装.
 * (EffectAnimation#setPosition()を委譲するためにEffectを継承している.
 */
class NonEffect extends Effect {
  public int operator() {
    return 0;
  }

  public void draw() {
    //nothing.
  }
}


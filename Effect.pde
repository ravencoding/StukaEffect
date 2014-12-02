/*
 * エフェクトの最後のフレーム画像を描画すると、NonEffectに遷移する.
 */
public class Effect implements State {
  private int counter = 0;
  private int posx;
  private int posy;
  private int imgID = 0;// explodeのIDで初期化.
  private int imgCHIP = 96;//explodeのピクセル数で仮に初期化.
  private int atlasX = 8;//explodeの列数で仮に初期化.
  private int atlasY = 2;//explodeの行数で仮に初期化.
  private int drawChipSize = 100;//描画時のピクセル数を仮に初期化.
 

  final int frame_limit = 15;
  private int frame = 0;

  public Effect() {//画像読み込み系はシングルトンクラスでやる予定.
  }

  public void draw() {
    drawOneFlame();
    frame++;
  }
  public int operator() {
    if (frame == Const.FRAME_LIMITS[this.imgID]) {
      frame = 0;
      counter = 0;
      return 0;
    } else return 1;
  }

  void drawOneFlame() {
    int offsetx = (counter % atlasX) * imgCHIP;
    int offsety = ((counter / atlasX) % atlasY) * imgCHIP;
    image(imgList.getEffectImg(this.imgID).get(offsetx, offsety, imgCHIP, imgCHIP), posx, posy, this.drawChipSize, this.drawChipSize);
    counter++;
  }

  public void setPosition(int posx, int posy) {
    this.posx = posx;
    this.posy = posy;
  }
  public void setImage(int imgID) {
    this.imgID = imgID;
    this.imgCHIP = Const.EFFECT_CHIPS[imgID];
    this.atlasX = Const.ATLAS_COLUMNS[imgID];
    this.atlasY = Const.ATLAS_ROWS[imgID];
    this.drawChipSize = Const.CHIP;//初期値をセット.
  }
  public void setChipSize(int chip){
    this.drawChipSize = chip;//指定があった場合はフィールドにセットされる.
  }

  public int getX() {
    return this.posx;
  }
  public int getY() {
    return this.posy;
  }
}

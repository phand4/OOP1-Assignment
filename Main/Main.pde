void setup()
{
  fullScreen();
  Radar = new radar(width / 8, height * 0.85 , 100, 0.5, color(95, 123, 147, 180));
  Suit = new suit(width * 0.8, height * 0.8, color(95, 123, 147, 180), color(72, 91, 108, 180), hd, td, lad, rad, lld, rld);
}

void draw()
{
  strokeWeight(10);

  background(255);
  tint(0, 153, 204, 126); 
  Suit.render();
  Radar.render();
  Radar.update();
}
radar Radar;
suit Suit;
float hd, td, lad, rad, lld, rld;
class radar
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
 radar(float cx, float cy, float radius, float frequency, color c)
 {
   this.cx = cx;
   this.cy = cy;
   this.radius = radius;
   this.frequency = frequency;
   this.speed = (TWO_PI / 60.0) * frequency;
   this.theta = 0;
   this.c = c;
 }
 
 
 void update()
 {
  theta += speed; 
 }
 
 void render()
 {
   stroke(c);
   strokeWeight(10);
   arc(cx, cy, (radius * 2)+101, (radius * 2)+101, -HALF_PI, HALF_PI);
   strokeWeight(5);
   stroke(95, 123, 147, 100);
   ellipse(cx, cy, (radius * 2)+10, (radius * 2)+10);
   stroke(c);
   noFill();
   ellipse(cx, cy, radius * 2, radius * 2);
   int trailLength = 10;
   //float blueIntensity = 255 / trailLength;
   for(int i = 0; i < trailLength; i++)
   {
     stroke(95, 123, 147, 100);
     float x = cx + sin(theta + i * speed) * radius;
     float y = cy - cos(theta + i * speed) * radius;
     line(cx, cy, x, y);
   }
 }
}
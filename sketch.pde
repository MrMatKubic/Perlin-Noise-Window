float xoff, yoff;
float anim = 0.0;

void setup()
{
  size(640, 360);
  background(255);
  colorMode(HSB);
}

void draw()
{
  stroke(51);
  fill(0);
  
  loadPixels();
  xoff = 0.0;
  for (int x = 0; x < width; x++)
  {
    yoff = 0.0;
    for (int y = 0; y < height; y++)
    {
      float hue = map(noise(xoff, yoff, anim), 0, 1, 100, 190);
      noiseDetail(10);
      pixels[x+y*width] = color(hue, 255, 255);
      yoff += 0.01;
    }
    xoff += 0.15;
  }
  updatePixels(); 
  
  anim += map(mouseY, 0, height, 0, 0.1);
}
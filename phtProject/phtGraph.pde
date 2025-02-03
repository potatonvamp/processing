import processing.serial.*;

int startIdx, endIdx;
String substr;
float pre, tempf, hum;
float x1, x2, y1, y2, h1, h2, p1, p2, d1, d2, k1, k2;

Serial myPort;

void setup() {
  size(800, 600);
  myPort = new Serial(this, Serial.list()[0], 9600);
  for (int i = 50; i < width; i += 50) {
    line(i, 0, i, height - 50);
  }
  for (int i = 50; i < height; i += 50) {
    line(50, i, width, (i));
  }
}

void draw() {
  while (myPort.available() > 0) {
    String inBuffer = myPort.readString();
    if (inBuffer != null) {
      println(inBuffer);
      startIdx = 0;
      endIdx = inBuffer.indexOf(',', startIdx);
      if (endIdx != -1) {
        substr = inBuffer.substring(startIdx, endIdx);
        pre = Float.parseFloat(substr);
        println(pre);
        startIdx = endIdx + 1;
      }
      endIdx = inBuffer.indexOf(',', startIdx);
      if (endIdx != -1) {
        substr = inBuffer.substring(startIdx, endIdx);
        tempf = Float.parseFloat(substr);
        println(tempf);
        startIdx = endIdx + 1;
      }
      if (endIdx < inBuffer.length()-1) {
        substr = inBuffer.substring(startIdx);
        hum = Float.parseFloat(substr);
        println(hum);
      }
    }
  }
}

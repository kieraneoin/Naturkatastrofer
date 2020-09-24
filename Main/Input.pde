class Input {
  Input(int x, int y, int inputB, int inputH) {
    this.x = x;
    this.y = y;
    this.inputBredde = inputB;
    this.inputHoejde = inputH;
  }


  void display() {
    displayInput();
    drawText();
    getUserInput();
  }


  void displayInput() {
    stroke(205);
    fill(205);
    rect(x, y, inputBredde, inputHoejde);
  }

  void drawText() {
    textAlign(LEFT, CENTER);
    textSize(16);
    fill(255);
    text(textValue + getCursor(), x + 5, y + inputHoejde/2);
  }

  void getUserInput() {
    if (!keyPressed) {
      keyReleased = true;
      keyCounter = 0;
      previousKeyCounter = 0;
    }
    if (keyPressed && c != key) {
      keyCounter = millis();

      c = key;

      if (c == BACKSPACE) textValue = "";
      else if (c >= ' ') textValue += str(c);
      if (textValue.length() > textLimit) textValue = "";

      previousKeyCounter = keyCounter;
      keyReleased = false;
    }
  }

  String getCursor() {
    return hovering() && (frameCount>>4 & 1) == 0 ? "|" : "";
  }

  boolean hovering() {
    return mouseX >= x && mouseX <= x + inputBredde && mouseY >= y && mouseY <= y + inputHoejde;
  }

  private int x, y, inputBredde, inputHoejde, textLimit = 40;
  private float currentValue, keyCounter, previousKeyCounter;
  private String textValue;
  private char keyInput, c;
  private boolean keyReleased;
}

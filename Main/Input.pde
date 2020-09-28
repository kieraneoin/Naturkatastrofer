class Input {
  Input(int x, int y, int inputB, int inputH) {
    this.x = x;
    this.y = y;
    this.inputBredde = inputB;
    this.inputHoejde = inputH;
  }


  void display() {
    displayInput();
    displayText();
    tjekBrugerInput();
  }


  void displayInput() {
    stroke(100);
    fill(100);
    rect(x, y, inputBredde, inputHoejde);
  }

  void displayText() {
    textAlign(LEFT, CENTER);
    textSize(16);
    fill(255);
    text(textValue + hentMus(), x + 5, y + inputHoejde/2);
  }

  void tjekBrugerInput() {
    if (!keyPressed) {
      keyReleased = true;
      keyCounter = 0;
      previousKeyCounter = 0;
    }
    if (keyPressed && c != key) {
      keyCounter = millis(); //viser hvor mange millisekunder det er siden programmet startede

      c = key;

      if (c == BACKSPACE) textValue = "";
      else if (c >= ' ') textValue += str(c);
      if (textValue.length() > textLimit) textValue = "";

      previousKeyCounter = keyCounter;
      keyReleased = false;
    }
  }

  String hentMus() {
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

void mouseReleased() {
  if (mode == INTRO) {
  } else if (mode == GAME) {
  } else if (mode == PAUSE) {
  } else if (mode == GAMEOVER) {
  } else {
    println("mode error: " + mode);
  }
}

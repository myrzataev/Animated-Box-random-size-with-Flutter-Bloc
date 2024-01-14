import 'dart:math';

import 'package:flutter/material.dart';

class AnimationRepository {
  Random random = Random();
  int changeHeight() {
    int height = random.nextInt(700);
    return height;
  }

  int changeWidth() {
    int width = random.nextInt(300);
    return width;
  }

  Color changeColor() {
    var generatedColor = Random().nextInt(Colors.primaries.length);
    return Colors.primaries[generatedColor];
  }
}

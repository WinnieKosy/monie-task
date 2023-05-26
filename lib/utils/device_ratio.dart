import 'package:flutter/material.dart';

extension DeviceAspectRatioExtension on BuildContext {
  double get deviceAspectRatio {
    final mediaQuery = MediaQuery.of(this);
    final size = mediaQuery.size;
    final width = size.width;
    final height = size.height;
    return width / height;
  }
}

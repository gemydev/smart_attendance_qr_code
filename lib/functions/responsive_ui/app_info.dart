import 'package:flutter/material.dart';

class AppInfo {
  final BuildContext context;

  AppInfo(this.context);
  double statusBarHeight() {
    double statusHeightBar = MediaQuery.of(this.context).padding.top;
    return statusHeightBar;
  }

  double appBarHeight() {
    double appBarHeight = AppBar().preferredSize.height;
    return appBarHeight;
  }

  double screenHeight() {
    double screenHeight = MediaQuery.of(this.context).size.height;
    return screenHeight;
  }

  double screenWidth() {
    double screenWidth = MediaQuery.of(this.context).size.width;
    return screenWidth;
  }
}

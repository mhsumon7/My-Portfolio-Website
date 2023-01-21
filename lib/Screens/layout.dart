import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final mobileScreen;
  final desktopScreen;
  int mobiledisplaydimention = 501;

  LayoutScreen({
    required this.mobileScreen, required this.desktopScreen
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth < mobiledisplaydimention){
        return mobileScreen;
      }else {
        return desktopScreen;
      }
    });
  }
}

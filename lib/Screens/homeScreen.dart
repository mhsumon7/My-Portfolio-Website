import 'package:flutter/material.dart';
import 'package:portfolio_flutter/Screens/desktopScreen.dart';
import 'package:portfolio_flutter/Screens/layout.dart';
import 'package:portfolio_flutter/Screens/mobileScreen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutScreen(mobileScreen: MobileScreen(), desktopScreen: DesktopScreen(),),
    );
  }
}

/*      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is a responsive UI',
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
              SizedBox(height: 20),
              Container(
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'This is a responsive container',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.04),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}*/

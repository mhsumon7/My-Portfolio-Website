import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/constants/constants.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BgImageDecoration,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DefaultTabController(
                    length: 3,
                    child: TabBar(tabs: [
                      Tab(
                        icon: Icon(
                          FontAwesomeIcons.projectDiagram,
                          size: 20,
                          color: Colors.black,
                        ),
                        child: Text(
                          'Projects',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          FontAwesomeIcons.user,
                          size: 20,
                          color: Colors.black,
                        ),
                        child: Text(
                          'MySelf',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          FontAwesomeIcons.file,
                          size: 20,
                          color: Colors.black,
                        ),
                        child: Text(
                          'Resume',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  CircleAvatar(
                    radius: (100),
                    backgroundColor: Color(0xffDCF3FE),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      //borderRadius:BorderRadius.circular(50),
                      child: Image.asset("lib/assets/image2.png"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Mehedi hasan Sumon'.toUpperCase(),
                        textStyle: TextStyle(
                            fontSize: currentwidth * 0.05,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontSize: currentwidth * 0.05,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: currentwidth * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Text('+8801987388762'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(LineIcons.mailBulk),
                            Text('Gmail'),
                            SizedBox(width: 2,),
                            Icon(LineIcons.github),
                            Text('GitHub'),
                            SizedBox(width: 2,),
                            Icon(LineIcons.linkedin),
                            Text('Linkdin'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

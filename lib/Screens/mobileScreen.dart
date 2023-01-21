import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio_flutter/Screens/projects.dart';
import 'package:portfolio_flutter/constants/constants.dart';

class MobileScreen extends StatefulWidget {

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: BgImageDecoration,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: currentwidth*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return ProjectScreen();}));
                        },
                        child: Container(
                          decoration: tabDecoration,
                          child:Text('Projects'),
                        ),
                      ),
                      Container(
                        decoration: tabDecoration,
                        child:Text('Myself'),
                      ),
                      Container(
                        decoration: tabDecoration,
                        child:Text('Resume'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80,),
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

                Text('Flutter Developer',style: TextStyle(
                    fontSize: currentwidth * 0.05,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: currentwidth*0.7,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      Text('+8801987388762'),
                      SizedBox(height: 10,),
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
    );
  }
}

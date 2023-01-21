import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCF3FE),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Container(
              child: Material(
                elevation: 30,
                shadowColor: Colors.black,
                color: Color(0xffC7E6E0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. BMI Calculator',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ),
                        InkWell(
                          onTap: () => launchUrl(
                              Uri.parse("https://github.com/mhsumon7")),
                          child: Text(
                            'Github Link',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.green),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              //width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: Image.asset(
                                'lib/assets/bmi1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              //width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: Image.asset(
                                'lib/assets/bmi2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              //width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: Image.asset(
                                'lib/assets/bmi1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      //padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.8,
                      child: Card(
                        color: Colors.green,
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        /*padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.width*0.8,*/
                        child: Image.asset(
                          'lib/assets/bmi1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Container(
              child: Material(
                elevation: 40,
                shadowColor: Colors.red,
                color: Colors.blue,
                child: Container(
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    'lib/assets/backgroundimage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Container(
              child: Material(
                elevation: 40,
                shadowColor: Colors.red,
                color: Colors.blue,
                child: Container(
                  child: Image.asset(
                    'lib/assets/backgroundimage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

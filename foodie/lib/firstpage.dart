import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'customwidget.dart';
import 'package:foodie/secondpage.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  // Widget circularImage(String imagePath, double radius) {
  //   return Expanded(
  //       child: CircleAvatar(
  //     backgroundImage: AssetImage(imagePath),
  //     radius: radius,
  //   ));
  // }

  Widget cimage(String imagepath, double hw, int flex) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Expanded(
        child: Container(
          width: hw,
          height: hw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            image:
                DecorationImage(image: AssetImage(imagepath), fit: BoxFit.fill),
          ),
        ),
        flex: flex,
      ),
    );
  }

  Widget texts(String text, double size, Color color, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 40),
        child: Center(
          child: Column(
            children: [
              texts('FOODECA', 25, Colors.black, FontWeight.w800),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/food.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Expanded(
              //     child: Padding(
              //   padding: const EdgeInsets.only(top: 40),
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Column(
              //         children: [
              //           cimage('assets/images/sushi.png', 120, 1),
              //           cimage('assets/images/wrap.png', 190, 2),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           cimage('assets/images/pizza.png', 200, 1),
              //           cimage('assets/images/cake.png', 140, 2),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           cimage('assets/images/soup.png', 150, 1),
              //           cimage('assets/images/salad.png', 220, 2),
              //         ],
              //       )
              //     ],
              //   ),
              // )),
              texts(
                  'Choose your preferences', 12, Colors.black, FontWeight.w300),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child:
                    texts('What\'s your ', 35, Colors.black, FontWeight.w700),
              ),
              texts('favorite food?', 35, Colors.black, FontWeight.w700),
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()));
                    },
                    child: Container(
                      child: Center(
                        child: texts(
                            'Get started', 15, Colors.white, FontWeight.w300),
                      ),
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

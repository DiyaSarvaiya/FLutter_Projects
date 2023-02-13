// ignore_for_file: sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';
import 'customwidget.dart';
import 'package:foodie/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Widget items(int flex, String imagePath, String name, String price) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ThirdPage())));
            },
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.fill)),
                  alignment: Alignment(0, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 35,
                        width: 120,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 20, right: 8),
                              child: Text(
                                price,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      flex: flex,
    );
  }

  // dynamic moveToItem() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: ((context) => const ThirdPage())));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              //something
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 40,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Icon(size: 20, Icons.person_outline),
                    shape: RoundedRectangleBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Texts(
                      text: 'What would',
                      size: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ],
              ),
              Row(
                children: [
                  Texts(
                      text: 'you ',
                      size: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  Texts(
                      text: 'like to order?',
                      size: 35,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                          fillColor: Color.fromARGB(248, 232, 235, 235),
                          filled: true,
                          hintText: 'search found',
                          border: InputBorder.none)),
                ),
              ),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        items(5, 'assets/images/sushi.png', 'Sushi', '\$18'),
                        items(4, 'assets/images/pizza.png', 'Pizza XL', '\$48')
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        items(4, 'assets/images/wrap.png', 'Barrito', '\$10'),
                        items(5, 'assets/images/salad.png', 'Salad', '\$25')
                      ],
                    )),
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 60,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.home_outlined),
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.portrait),
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.restaurant_menu_outlined),
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     unselectedItemColor: Colors.white,
        //     selectedItemColor: Colors.white,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        //       BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.blender_outlined), label: '')
        //     ],
        //     backgroundColor: Colors.black,
        //   ),
      ),
    );
  }
}

// ignore_for_file: sort_child_properties_last

import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
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

  var listResponse;
  var mapResponse;
  bool isApicalled = true;

  Future<void> apicall() async {
    http.Response response = await http
        .get(Uri.parse("https://63fbf61e1ff79e1332964744.mockapi.io/Pro"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listResponse = mapResponse;
        isApicalled = false;
      });
      print(listResponse[0]['Name']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                //something
              },
              icon: Icon(
                Icons.short_text,
                size: 30,
              ),
              color: Colors.grey,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 40,
                    color: Colors.black,
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: FutureBuilder(
            future: isApicalled ? apicall() : null,
            builder: ((context, snapshot) {
              if (!isApicalled) {
                return Padding(
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
                                items(5, 'assets/images/sushi.png',
                                    listResponse[0]['Name'], '\$18'),
                                items(4, 'assets/images/pizza.png',
                                    listResponse[1]['Name'], '\$48')
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                items(4, 'assets/images/wrap.png',
                                    listResponse[2]['Name'], '\$10'),
                                items(5, 'assets/images/salad.png',
                                    listResponse[3]['Name'], '\$25')
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
                                    autofocus: false,
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.shopping_bag_outlined),
                                    color: Colors.grey,
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.restaurant_menu_outlined),
                                    color: Colors.grey,
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.settings),
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
              return CircularProgressIndicator();
            }),
          )
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

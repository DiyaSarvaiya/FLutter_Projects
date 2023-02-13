// import 'dart:html';

// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'customwidget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  Widget circularBox(
      Color color, double top, double bottom, double left, double right) {
    return Expanded(
        child: Padding(
      padding:
          EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Texts(
              text: 'My order',
              color: Colors.white,
              size: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 30, left: 15, right: 15),
          child: Column(children: [
            // circularBox(Colors.white, 15, 15, 15, 15),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                    color: Colors.white,
                    child: Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Texts(
                                        text: 'Carbonara',
                                        size: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Texts(
                                        text: '240 g  .  \$20',
                                        size: 15,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                )),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.white70,
                                    textColor: Colors.black45,
                                    child: Icon(size: 20, Icons.numbers),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 30,
                                width: 170,
                                color: Colors.black,
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Texts(
                                          text: '  ADD SPICES',
                                          color: Colors.white,
                                          size: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40),
                                        child: Icon(
                                          Icons.arrow_right,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(200),
                              topRight: Radius.circular(200),
                            ),
                            child: Container(
                              height: 140,
                              width: 270,
                              child: Image.asset(
                                'assets/images/pizza.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Texts(
                      text: 'Details',
                      color: Colors.white,
                      size: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'See more',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          // circularBox(Colors.deepPurpleAccent, 15, 10, 5, 5),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Texts(
                                        text: 'Progress rate',
                                        color: Colors.white,
                                        size: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Texts(
                                          text: '4.65',
                                          color: Colors.white,
                                          size: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Color(0xFF6233D2),
                              ),
                            ),
                          )),

                          // circularBox(Colors.white, 15, 10, 5, 5)
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 5, right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    children: [
                                      //Icon(Icons.lock_clock_rounded),
                                      MaterialButton(
                                        onPressed: () {},
                                        color: Colors.white24,
                                        textColor: Colors.black45,
                                        child: Icon(
                                            size: 20, Icons.timer_outlined),
                                        padding: EdgeInsets.all(1),
                                        shape: CircleBorder(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 3),
                                        child: Texts(
                                          text: 'time',
                                          color: Colors.black,
                                          size: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Texts(
                                        text: '12:45',
                                        color: Colors.black,
                                        size: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ],
                      )),

                      // circularBox(Colors.white, 10, 3, 5, 5)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.grey.shade800,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, bottom: 20, left: 8, right: 8),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texts(
                                        text: 'Delivery address',
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Texts(
                                      text:
                                          '  6391 Elgin st. Celina,\n  Delamaire 10290   ',
                                      size: 15,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 5,
                ),
                // circularBox(Colors.white, 15, 5, 8, 5)
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          alignment: AlignmentDirectional.topEnd,
                          color: Color.fromARGB(255, 200, 233, 247),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.blueGrey.shade100,
                                  textColor: Colors.white,
                                  child: Icon(size: 20, Icons.payment_outlined),
                                  padding: EdgeInsets.all(1),
                                  shape: CircleBorder(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Texts(
                                  text: '\$258',
                                  fontWeight: FontWeight.w700,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, bottom: 15),
                                child: Texts(
                                  text: 'total',
                                  size: 13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 3, left: 3, right: 3),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          MaterialButton(
                                            onPressed: () {},
                                            color: Colors.black,
                                            textColor: Colors.white,
                                            child: Icon(
                                                size: 20,
                                                Icons.payments_outlined),
                                            padding: EdgeInsets.all(1),
                                            shape: CircleBorder(),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Texts(
                                              text: 'Pay now',
                                              size: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}

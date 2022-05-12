import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Dashboard> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: [
                        const Icon(Icons.car_rental, size: 70),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            width: 190,
                            height: 30,
                            child: Text('Completed  Delivery',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        ),
                        const Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                    color: Colors.green,
                  ),
                  Card(
                    child: Column(
                      children: [
                        const Icon(Icons.punch_clock_outlined, size: 70),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            width: 190,
                            height: 30,
                            child: Text('Pending  Delivery',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        const Text("0",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: [
                        const Icon(Icons.motorcycle, size: 70),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            width: 190,
                            height: 30,
                            child: Text('Total Collected',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        ),
                        const Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                    color: Colors.red,
                  ),
                  Card(
                    child: Column(
                      children: [
                        const Icon(Icons.money, size: 70),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: const SizedBox(
                            width: 190,
                            height: 30,
                            child: Text('Earnings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        const Text("0",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    color: Colors.teal,
                  ),
                ],
              ),
              Column(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                            color: Color.fromARGB(255, 234, 10, 10),
                            child: ListTile(
                              leading: const Icon(Icons.arrow_drop_down_circle),
                              title: const Text('Cancelled Delivery ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: const [
                                Icon(Icons.run_circle,
                                    size: 70, color: Colors.red),
                                Text("on the way(0)",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              Column(children: const [
                                Icon(Icons.delivery_dining,
                                    size: 70, color: Colors.orange),
                                Text("Picked(0)",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              Column(children: const [
                                Icon(Icons.assignment,
                                    size: 70,
                                    color: Color.fromARGB(255, 94, 7, 255)),
                                Text("Assigned(0)",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 94, 7, 255),
                                        fontWeight: FontWeight.bold)),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}

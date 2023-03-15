// ignore_for_file: avoid_unnecessary_containers

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.lightBlue,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.lightBlue,
          height: 75.0,
          items: const <Widget>[
            Icon(
              Icons.home_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.bar_chart_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationDuration: const Duration(
            milliseconds: 280,
          ),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: (index) {
            // code here for the buttons
          },
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 60,
                  margin:
                      const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        //put the menu button svg here
                        child: Icon(
                          Icons.menu_rounded,
                          size: 32,
                          color: Colors.grey[800],
                        ),
                      ),
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          //put the user picture here
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/d.jpg',
                              fit: BoxFit.fill,
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
                  child: const Text(
                    'Mobile,',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                  child: const Text(
                    'Photography.',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: DefaultTabController(
                    length: 5,
                    child: TabBar(
                      labelPadding: const EdgeInsets.only(right: 24.0),
                      indicatorPadding: const EdgeInsets.only(right: 24.0),
                      isScrollable: true,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey[400],
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(
                          child: Container(
                            child: const Text('Mardi'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Nawalpur'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Kathmandu'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Parbat'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Syangja'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/a.jpg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/b.jpg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/c.jpeg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                    width: double.infinity,
                    height: 30,
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: "More photos",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ]),
                          ),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: "See all",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue),
                              ),
                            ]),
                          ),
                        ])),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: DefaultTabController(
                    length: 6,
                    initialIndex: 2,
                    child: TabBar(
                      labelPadding: const EdgeInsets.only(right: 24.0),
                      indicatorPadding: const EdgeInsets.only(right: 24.0),
                      isScrollable: true,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey[400],
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(
                            child: Container(
                          child: const Text('Places'),
                        )),
                        Tab(
                          child: Container(
                            child: const Text('Plants'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Animals'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Buildings'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Flowers'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: const Text('Peoples'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/i.jpg",
                            height: 100.0,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 100,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/e.jpg",
                            height: 100.0,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 100,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/f.jpg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 100,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/g.jpg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        height: 100,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/h.jpg",
                            height: 200.0,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

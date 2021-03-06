import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ulangan_harian/listdzikirpagi.dart';
import 'package:ulangan_harian/listdzikirpetang.dart';
import 'package:ulangan_harian/listhadits.dart';
import 'package:ulangan_harian/listquran.dart';
import 'package:ulangan_harian/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async {
          showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text('Are you sure?'),
              content: Text('Do you want to exit an App'),
              actions: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20 / 2,
                      bottom: 20 / 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 / 2),
                      color: Color(0xFF21BFBD),
                    ),
                    child: Text(
                      "NO",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => exit(0),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20 / 2,
                      bottom: 20 / 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 / 2),
                      
                      color: Colors.red,
                    ),
                    child: Text(
                      "YES",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
          return Future.value(true);
        },
        //this gonna give us total height and with of our device
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                // Here the height of the container is 45% of our total height
                height: size.height * .27,
                decoration: BoxDecoration(
                  color: Color(0xFF21BFBD),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/image/shade.png"),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2BEA1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.menu),
                        ),
                      ),
                      Text(
                        "Advance \nMuslim",
                        style: Theme.of(context)
                            .textTheme
                            // ignore: deprecated_member_use
                            .headline4!
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .85,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          children: <Widget>[
                            CategoryCard(
                              title: "Al-quran",
                              logo: "assets/image/1.png",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return ListQuran();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "Hadist",
                              logo: "assets/image/2.png",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return ListHadist();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "Dzikir Pagi",
                              logo: "assets/image/3.png",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return ListDzikirPagi();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "Dzikir Sore",
                              logo: "assets/image/4.png",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return ListDzikirPetang();
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/DzikirPagi.dart';

class ListDzikirPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF21BFBD),
            appBar: AppBar(
            elevation: 15,
            backgroundColor: Color(0xFF21BFBD),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu_book, color: Colors.white),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
            ],
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        colors: [Color(0xff083EF6), Color(0xff008DFF)])),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Dzikir Pagi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen'),
                        textAlign: TextAlign.center,
                      ),
                       
                    ],
                  ),
                ],
              ),
            )),
            body: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              //  scrollDirection: Axis.horizontal,
              itemCount: dataPagi.length,
              itemBuilder: (context, index) {
                final Pagi place = dataPagi[index];

                return InkWell(
                  
                    child: Container(
                        height: 600,
                        padding: EdgeInsets.all(20.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 40),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withAlpha(500),
                                  blurRadius: 20.0),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text(
                                      place.title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oxygen'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      place.note,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: 'Oxygen'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      place.arabic,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: 'Oxygen'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      place.translated_id,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: 'Oxygen'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      place.narrator,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: 'Oxygen'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            )));
  }
}

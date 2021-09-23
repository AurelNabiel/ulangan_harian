import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/HaditsModel.dart';

class HaditsTampil extends StatelessWidget {
  final Hadits arab;
  HaditsTampil({required this.arab});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
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
                        colors: [Color(0xFF21BFBD), Color(0xFF21BFBD)])),
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
                        arab.nama,
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
          
              body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(arab.arab,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0, 
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                        )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                   arab.id,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen'),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
                  // decoration: BoxDecoration(

                  //     borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //     color: Colors.white,
                  //     boxShadow: [
                  //       BoxShadow(
                  //           color: Colors.black.withAlpha(300), blurRadius: 10.0),
                  //     ]),
                  // child: Padding(
                  //     padding: EdgeInsets.all(5.0),
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Expanded(
                  //             flex: 2,
                  //             child: Padding(
                  //                 padding: EdgeInsets.all(10.0),
                  //                 child: Column(children: [
                  //                   Text(
                  //                     arab.arab,
                  //                     style: TextStyle(
                  //                         color: Colors.black,
                  //                         fontSize: 25.0,
                  //                         fontWeight: FontWeight.bold,
                  //                         fontFamily: 'Oxygen'),
                  //                     textAlign: TextAlign.right,
                  //                   ),
                  //                   SizedBox(
                  //                     height: 10,
                  //                   ),
                  //                   Text(
                  //                     arab.id,
                  //                     style: TextStyle(
                  //                         color: Colors.black,
                  //                         fontSize: 18.0,
                  //                         fontFamily: 'Oxygen'),
                  //                     textAlign: TextAlign.left,
                  //                   ),
                  //                 ]
                                  
                  //                 )
                  //                 )
                  //                 )
                  //       ],
                  //     )
                  //     )
                        
        ),
  
    
            )
            );
  }
}



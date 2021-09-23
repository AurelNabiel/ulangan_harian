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
                 child: Container(
                      
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      
                            margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
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
                          padding: EdgeInsets.all(25.0),
                    child: Text(arab.arab,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                          )),
                             )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  Container(
                   
                    child: Text(
                     arab.id,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oxygen'),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
             
                                  // child: Column(
                                  //   crossAxisAlignment: CrossAxisAlignment.end,
                                  //   mainAxisSize: MainAxisSize.min,
                                  //   children: [
                                  //     Text(
                                  //       place.surat_text,
                                  //       style: TextStyle(
                                  //           color: Colors.black,
                                  //           fontSize: 32.0,
                                  //           fontWeight: FontWeight.bold,
                                  //           fontFamily: 'Oxygen'),
                                  //     ),
                                  //   ],
                                  // ),
                                
                              
            )
                
              )           
        ),
  
    
            )
            );
  }
}



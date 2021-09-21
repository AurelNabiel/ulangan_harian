import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/main.dart';
import 'package:ulangan_harian/listhadits.dart';
import 'package:ulangan_harian/model/HaditsModel.dart';


class HaditsTampil extends StatelessWidget {

  final Hadits arab;
  HaditsTampil({required this.arab});

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF21BFBD),
            appBar: AppBar(
              title:  Center(
                child: Text(
                  "Daftar Surat",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oxygen'),
                ),
              ),
              elevation: 0,
              backgroundColor: Color(0xFF00695C),
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
            ),
             body: ListView.builder(
              itemCount: haditsdata.length,
              itemBuilder: (context, index) {
               
                return Container(
                        height: 400,
                         decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withAlpha(300),
                                  blurRadius: 10.0),
                            ]),
                        // margin: const EdgeInsets.symmetric(
                        //     horizontal: 10, vertical: 10),
                       
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [

                               

                                   
                                
                             
                              Expanded(
                                
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                child: Column(
                                  children: [

                                      
                                    Text(
                                      arab.arab,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oxygen'),
                                          textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      arab.id,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontFamily: 'Oxygen'),
                                          textAlign: TextAlign.left,
                                    ),
                                  ],

                                ),
                              ),
                              ),
                             
                            ],
                          ),
                        ));
              },
            )
             
             )
        );
  }


  }


// var information Text( 
//   'Open Everyday',
//   style: informationTextStyle,
// )


           //  child: ListView.builder(
                //    itemCount: ayat.ayat.length,
                //    itemBuilder: (context, index) {               
                 
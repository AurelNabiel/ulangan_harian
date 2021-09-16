import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ulangan_harian/main_screen.dart';
import 'package:ulangan_harian/detail.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';
// import 'detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance Muslim',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title:  const Center(
            child: Text(
              "Daftar Surat",
              style: TextStyle( color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.lightGreen,
          leading: IconButton(
              icon: Icon(Icons.menu_book, color: Colors.black),
              onPressed: () {},
            ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
        

        
        body:ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final Alquran place = data[index];
            return InkWell(
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return Alquran(place: place,);
              //   }));
              // },
              child: Container(
                height: 90,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)), color: Colors.black, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(300), blurRadius: 10.0),
          ]),


              child: Padding(
                        padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2, 
                      child:
                       Column(
                         children: [
                           Text(
                                  place.surat_name,
                                  style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 10,
                            ),
                            Text(
                                  place.surat_terjemahan,
                                  style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: 'Oxygen'),
                                  
                                ),
                         ],
                         
                       ),
                            
                            
                       ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              place.surat_text,
                              style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                  
                ),
                
             
              )
              )
            );
          },
        )
        ));
  }
}


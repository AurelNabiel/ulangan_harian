// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';

class AyatTampil extends StatelessWidget {
  final Alquran ayat;
  AyatTampil({required this.ayat});

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
                        ayat.surat_text,
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
          itemCount: ayat.ayat.length,
          itemBuilder: (context, index) {
            return Card(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(ayat.ayat[index].aya_text,
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(fontSize: 30.0, color: Colors.black,  fontWeight: FontWeight.bold,)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ayat.ayat[index].translation_aya_text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
             
                );
          }),
      ),
      
    );
  }
}
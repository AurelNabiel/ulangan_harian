import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';
import 'package:ulangan_harian/main.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {

  final Alquran place;
  

  DetailScreen({required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           
            
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.surat_name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 Text(
                                  place.surat_name,
                                  style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 10,
                            ),
                            
                ],
              ),
            ),

            
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 Text(
                                  place.surat_name,
                                  style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 10,
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

// var information Text( 
//   'Open Everyday',
//   style: informationTextStyle,
// )
       

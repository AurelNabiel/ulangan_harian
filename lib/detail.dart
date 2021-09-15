import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';



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
    return Scaffold(
        appBar: AppBar(title: Text("Wisata Bandung")),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final Alquran place = data[index];

            return InkWell(
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return Alquran(place: place,);
              //   }));
              // },
              child: Padding(
                        padding: EdgeInsets.all(8.0),
              child: Card(
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
                                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 10,
                            ),
                            Text(
                                  place.surat_terjemahan,
                                  style: TextStyle(fontSize: 17.0, fontFamily: 'Oxygen'),
                                  
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
                              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                  
                ),
              ),
              )
            );
          },
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/HaditsModel.dart';

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
          itemCount: HaditsData.length,
          itemBuilder: (context, index) {
            final Hadits place = HaditsData[index];

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
                      child: Column(
                          //  children: [
                          //    Text(
                          //           place.number,
                          //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),

                          //         ),
                          //         SizedBox(
                          //       height: 10,
                          //     ),

                          //  ],
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
                            // Text(
                            //   place.surat_text,
                            //   style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
          },
        ));
  }
}

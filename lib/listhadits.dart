import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/HaditsModel.dart';

class ListHadist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF21BFBD),
            appBar: AppBar(
              title: const Center(
                child: Text(
                  "Daftar Surat",
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
              itemCount: HaditsData.length,
              itemBuilder: (context, index) {
                final Hadits place = HaditsData[index];

                return InkWell(
                    // onTap: () {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //     return DetailScreen(place: place,);
                    //   }));
                    // },
                    child: Container(
                      
                        height: 90,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withAlpha(300),
                                  blurRadius: 10.0),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Text(
                                      place.nama,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oxygen'),
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
                                        place.number,
                                        style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )));
              },
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';
import 'package:ulangan_harian/detailquran.dart';

class ListQuran extends StatelessWidget {
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
              itemCount: data.length,
              itemBuilder: (context, index) {
                final Alquran place = data[index];
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AyatTampil(
                          ayat: place,
                        );
                      }));
                    },
                    child: Container(
                      height: 100,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
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
                                      place.surat_name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oxygen'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      place.surat_terjemahan,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
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
                                        place.surat_text,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oxygen'),
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

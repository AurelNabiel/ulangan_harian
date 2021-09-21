import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/DzikirPagi.dart';


class ListDzikirPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    return SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        appBar: AppBar(
          title:  const Center(
            child: Text(
              "Daftar Surat",
              style: TextStyle( color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
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
        

        body:ListView.builder(
         
       padding: EdgeInsets.symmetric(vertical: 30.0),
      //  scrollDirection: Axis.horizontal,
       itemCount: dataPagi.length,
       itemBuilder: (context, index) {
         final Pagi place = dataPagi[index];

            return InkWell(
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return DetailScreen(place: place,);
              //   }));
              // },
        child: Container(
               height: 800,
                        padding: EdgeInsets.all(20.0),
                        margin: const EdgeInsets.symmetric(horizontal:50 , vertical: 40),
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                        BoxShadow(color: Colors.black.withAlpha(500), blurRadius: 20.0),
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
                                  place.title,
                                  style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 5,
                            ),
                            Text(
                                  place.note,
                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Oxygen'),
                                  
                                ),
                                 SizedBox(
                              height: 10,
                            ),
                            Text(
                                  place.arabic,
                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Oxygen'),
                                  
                                ),
                                 SizedBox(
                              height: 5,
                            ),
                            Text(
                                  place.translated_id,
                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Oxygen'),
                                  
                                ),
                                SizedBox(
                              height: 10,
                            ),
                            Text(
                                  place.narrator,
                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Oxygen'),
                                  
                                ),
                         ],
                         
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







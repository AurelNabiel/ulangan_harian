import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/model/AlquranModel.dart';

// var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

// class DetailScreen extends StatelessWidget {

//   final TourismPlace place;

//   DetailScreen({required this.place});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Stack(
              
//               children: [
//                 Image.asset(place.imageAsset),
//                 SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.black45,
//                       child: IconButton(onPressed: (){
//                         Navigator.pop(context);
//                       }, icon: Icon(Icons.arrow_back)),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Container(
//                 margin: EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   place.name,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
//                 )),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: [
//                       Icon(Icons.calendar_today),
//                       SizedBox(
//                         height: 8.0,
//                       ),
//                       Text(place.openDays),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.access_time),
//                       SizedBox(
//                         height: 8.0,
//                       ),
//                       Text(place.openTime),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.monetization_on_sharp),
//                       SizedBox(
//                         height: 8.0,
//                       ),
//                       Text(place.ticketAsset),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Text(
//                   "Limbo is a puzzle-platform video game developed by independent studio Playdead. The game was released in July 2010 on Xbox Live Arcade, and has since been ported to several other systems, including the PlayStation 3, Linux and Microsoft Windows. Limbo is a 2D side-scroller, incorporating a physics system that governs environmental objects and the player character. The player guides an unnamed boy through dangerous environments and traps as he searches for his sister. The developer built the game's puzzles expecting the player to fail before finding the correct solution. Playdead called the style of play 'trial and death' and used gruesome imagery  the boys deaths to steer the player from unworkable solutions",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16.0,fontFamily: 'Oxygen'),
//                 )),
//             Container(
//               height: 150,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                  children: place.imageUrls.map((url){
//                   return Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(url),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }

// // var information Text( 
// //   'Open Everyday',
// //   style: informationTextStyle,
// // )
                        
                 
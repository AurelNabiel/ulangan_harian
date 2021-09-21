import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/listhadits.dart';
import 'package:ulangan_harian/main_screen.dart';
import 'package:ulangan_harian/listquran.dart';
import 'package:ulangan_harian/listdzikirpagi.dart';
import 'package:ulangan_harian/listdzikirpetang.dart';

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
      home: ListQuran(),
    );
  }
}

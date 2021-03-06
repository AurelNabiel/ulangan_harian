import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulangan_harian/main_screen.dart';
import 'package:ulangan_harian/widgets/splash_screen.dart';

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
      home: SplashScreenView(),
    );
  }
}

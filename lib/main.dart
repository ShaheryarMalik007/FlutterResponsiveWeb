import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_ui/Pages/main_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sherri Resp UI',
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme()
      ),
      home: MainScreen(),
    );
  }
}

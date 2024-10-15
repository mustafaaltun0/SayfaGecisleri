import 'package:flutter/material.dart';
import 'package:flutter_application_1/anasayfa.dart';
import 'package:flutter_application_1/bottom_nav_kullanimi/botton_navigation_sayfa.dart';
import 'package:flutter_application_1/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:flutter_application_1/odev/gecis_anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GecisAnasayfa(),
    );
  }
}

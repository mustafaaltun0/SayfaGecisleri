import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_nav_kullanimi/sayfa1.dart';
import 'package:flutter_application_1/bottom_nav_kullanimi/sayfa2.dart';
import 'package:flutter_application_1/bottom_nav_kullanimi/sayfa3.dart';

class BottonNavigationSayfa extends StatefulWidget {
  const BottonNavigationSayfa({super.key});

  @override
  State<BottonNavigationSayfa> createState() => _BottonNavigationSayfaState();
}

class _BottonNavigationSayfaState extends State<BottonNavigationSayfa> {
  int secilenIndeks = 0;
  var Sayfalar = [const Sayfa1(),const Sayfa2(),const Sayfa3(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation"),backgroundColor: Colors.deepPurple,),
      body: Sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "Bir"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,

        onTap: (index){
          setState(() {
            secilenIndeks = index;
          });
        },
      ),
    );
  }
}
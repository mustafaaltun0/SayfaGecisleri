import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev/sayfa_a.dart';
import 'package:flutter_application_1/odev/sayfa_x.dart';

class GecisAnasayfa extends StatefulWidget {
  const GecisAnasayfa({super.key});

  @override
  State<GecisAnasayfa> createState() => _GecisAnasayfaState();
}

class _GecisAnasayfaState extends State<GecisAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: const Text("Geçiş AnaSayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
            }, child: const Text("Sayfa A Git")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()));
            }, child: const Text("Sayfa X Git")),
          ],
        ),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/kisiler.dart';
import 'package:flutter_application_1/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  final Kisiler kisi; // 'final' eklenmeli

  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(
          onPressed: () {
            print("App Geri Tuşu seçildi");
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          print("Navigation geri tuşu seçildi");
          return true; // geri dönüşü sağlamak için true döndürmelisiniz
        },
        child: Center( // Center widget'ı burada olmalı
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SonucEkrani()),
                  );
                },
                child: const Text("Bitti"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama; //contoh data yang di-passing
  final String nim;
  final int umur;

  const TampilData({Key? key, 
  required this.nama,
  required this.nim,
  required this.umur}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Column(
            children: [
              Text("Nama Saya $nama, NIM $nim,"),
              Text("dan umur saya $umur tahun Kak")
            ]),
          ],
      ),
    );
  }
}

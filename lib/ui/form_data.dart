// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {

  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunlahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
          _textboxnama(),
          _textboxnim(),
          _textboxtahunlahir(),
          _tombolsimpan(),
          ],)
      )
    );
  }
  
  _textboxnim() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nim"),
      controller: _nimController
    );
  }
  
  _textboxnama() {
      return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController
    );
  }
  
    _textboxtahunlahir() {
     return TextField(
      decoration: const InputDecoration(labelText: "Tahun lahir"),
      controller: _tahunlahirController
    );
      

  }
  
  _tombolsimpan() {
    return ElevatedButton(
      onPressed: (){
        String nama = _namaController.text;
        String nim = _nimController.text;
        int umur = DateTime.now().year-int.parse(_tahunlahirController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(
            nama : nama,
            nim : nim,
            umur : umur,
          )));
      }, child: const Text("simpan"),);
  }
  }
  





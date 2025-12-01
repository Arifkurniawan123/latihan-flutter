import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pasien.dart';
import 'package:arif_app/pasien_detail.dart';

class PasienInput extends StatefulWidget {
  const PasienInput({super.key});

  @override
  State<PasienInput> createState() => _PasienInputState();
}

class _PasienInputState extends State<PasienInput> {
  final _formKey = GlobalKey<FormState>();
  final _norm = TextEditingController();
  final _nama = TextEditingController();
  final _tl = TextEditingController();
  final _tlp = TextEditingController();
  final _alamat = TextEditingController();

  _noRekamMedis() {
    return TextField(
      decoration: InputDecoration(labelText: "No Rekan Medis"),
      controller: _norm,
    );
  }

  _namaPasien() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Pasien"),
      controller: _nama,
    );
  }

  _tlPasien() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tanggal Lahir Pasien (contoh: YYYY-MM-DD)",
      ),
      controller: _tl,
    );
  }

  _tlpPasien() {
    return TextField(
      decoration: InputDecoration(labelText: "No Telepon"),
      controller: _tlp,
    );
  }

  _alamatPasien() {
    return TextField(
      decoration: InputDecoration(labelText: "No Rekan Medis"),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: _alamat,
    );
  }

  _btnSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pasien pasien = Pasien(
          noRm: _norm.text,
          nama: _nama.text,
          tl: _tl.text,
          tlp: _tlp.text,
          alamat: _alamat.text,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPasien(pasien: pasien)),
        );
      },
      child: Text("Simpan Data"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Pasien'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                _noRekamMedis(),
                SizedBox(height: 15),
                _namaPasien(),
                SizedBox(height: 15),
                _tlPasien(),
                SizedBox(height: 15),
                _tlpPasien(),
                SizedBox(height: 15),
                _alamatPasien(),
                SizedBox(height: 30),
                _btnSimpan(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

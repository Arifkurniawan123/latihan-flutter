import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pegawai.dart';
import 'package:arif_app/pegawai_detail.dart';

class PegawaiInput extends StatefulWidget {
  const PegawaiInput({super.key});

  @override
  State<PegawaiInput> createState() => _PegawaiInputState();
}

class _PegawaiInputState extends State<PegawaiInput> {
  final _formKey = GlobalKey<FormState>();
  final _nip = TextEditingController();
  final _nama = TextEditingController();
  final _tl = TextEditingController();
  final _tlp = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  _nipPegawai() {
    return TextField(
      decoration: InputDecoration(labelText: "NIP Pegawai"),
      controller: _nip,
    );
  }

  _namaPegawai() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Pegawai"),
      controller: _nama,
    );
  }

  _tlPegawai() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tanggal Lahir Pegawai(Contoh: YYYY-MM-DD)",
      ),
      controller: _tl,
    );
  }

  _tlpPegawai() {
    return TextField(
      decoration: InputDecoration(labelText: "No Telepon Pegawai"),
      controller: _tlp,
    );
  }

  _emailPegawai() {
    return TextField(
      decoration: InputDecoration(labelText: "Email"),
      controller: _email,
    );
  }

  _passwordPegawai() {
    return TextField(
      decoration: InputDecoration(labelText: "Password"),
      controller: _password,
      obscureText: true,
    );
  }

  _btnSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pegawai pegawai = Pegawai(
          nip: _nip.text,
          nama: _nama.text,
          tl: _tl.text,
          tlp: _tlp.text,
          email: _email.text,
          password: _password.text,
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPegawai(pegawai: pegawai),
          ),
        );
      },
      child: Text("Simpan Data"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Pegawai'),
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
                _nipPegawai(),
                SizedBox(height: 15),
                _namaPegawai(),
                SizedBox(height: 15),
                _tlPegawai(),
                SizedBox(height: 15),
                _tlpPegawai(),
                SizedBox(height: 15),
                _emailPegawai(),
                SizedBox(height: 15),
                _passwordPegawai(),
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

import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pegawai.dart';
import 'package:arif_app/pegawai.dart';
import 'package:arif_app/pegawai_update.dart';

class DetailPegawai extends StatefulWidget {
  final Pegawai pegawai;

  const DetailPegawai({super.key, required this.pegawai});

  @override
  State<DetailPegawai> createState() => _DetailPegawaiState();
}

class _DetailPegawaiState extends State<DetailPegawai> {
  _btnUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiUpdate(pegawai: widget.pegawai),
          ),
        );
      },
      child: Text("Ubah Data"),
    );
  }

  _btnHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: Text("Anda akan menghapus data ini?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()),
                );
              },
              child: Text("Ya"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"),
            ),
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      child: Text("Hapus Data"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pegawai'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'NIP   : ${widget.pegawai.nip}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Nama  : ${widget.pegawai.nama}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Tanggal Lahir  : ${widget.pegawai.tl}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Telepon  : ${widget.pegawai.tlp}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Email  : ${widget.pegawai.email}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_btnUbah(), _btnHapus()],
            ),
          ],
        ),
      ),
    );
  }
}

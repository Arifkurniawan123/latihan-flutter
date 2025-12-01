import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pasien.dart';
import 'package:arif_app/pasien.dart';
import 'package:arif_app/pasien_update.dart';

class DetailPasien extends StatefulWidget {
  final Pasien pasien;

  const DetailPasien({super.key, required this.pasien});

  @override
  State<DetailPasien> createState() => _DetailPasienState();
}

class _DetailPasienState extends State<DetailPasien> {
  _btnUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PasienUpdate(pasien: widget.pasien),
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
                  MaterialPageRoute(builder: (context) => PasienPage()),
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
        title: Text('Detail Pasien'),
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
              'No Rekam   : ${widget.pasien.noRm}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Nama  : ${widget.pasien.nama}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Tanggal Lahir  : ${widget.pasien.tl}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Telepon  : ${widget.pasien.tlp}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Text(
              'Email  : ${widget.pasien.alamat}',
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

import 'package:flutter/material.dart';
import 'package:arif_app/model/m_poly.dart';
import 'package:arif_app/poly.dart';
import 'package:arif_app/poly_update.dart';

class DetailPoly extends StatefulWidget {
  final Poly poly;

  const DetailPoly({super.key, required this.poly});

  @override
  State<DetailPoly> createState() => _DetailPolyState();
}

class _DetailPolyState extends State<DetailPoly> {
  // Tombol Edit
  _btnEdit() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UpdatePoly(poly: widget.poly),
          ),
        );
      },
      child: Text("Ubah"),
    );
  }

  // Tombol Hapus
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
                  MaterialPageRoute(builder: (context) => PolyPage()),
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
      child: Text("Hapus"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("NAMA POLY :"),
          SizedBox(height: 20),
          Text(widget.poly.namaPoly),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [_btnEdit(), _btnHapus()],
          ),
        ],
      ),
    );
  }
}

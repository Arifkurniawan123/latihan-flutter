import 'package:flutter/material.dart';
import 'package:arif_app/model/m_poly.dart';
import 'package:arif_app/poly_detail.dart';

class InputPoly extends StatefulWidget {
  const InputPoly({super.key});

  @override
  State<InputPoly> createState() => _InputPolyState();
}

class _InputPolyState extends State<InputPoly> {
  final _formKey = GlobalKey();
  final _nmPoly = TextEditingController();

  _namaPoly() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Poly"),
      controller: _nmPoly,
    );
  }

  _btnSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poly poly = Poly(namaPoly: _nmPoly.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DetailPoly(poly: poly)),
        );
      },
      child: Text("Simpan Data"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 20),
                _namaPoly(),
                SizedBox(height: 35),
                _btnSimpan(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

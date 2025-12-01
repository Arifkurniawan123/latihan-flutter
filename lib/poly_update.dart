import 'package:flutter/material.dart';
import 'package:arif_app/model/m_poly.dart';
import 'package:arif_app/poly_detail.dart';

class UpdatePoly extends StatefulWidget {
  final Poly poly;
  const UpdatePoly({Key? key, required this.poly}) : super(key: key);

  @override
  State<UpdatePoly> createState() => _UpdatePolyState();
}

class _UpdatePolyState extends State<UpdatePoly> {
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
  void initState() {
    super.initState();
    setState(() {
      _nmPoly.text = widget.poly.namaPoly;
    });
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

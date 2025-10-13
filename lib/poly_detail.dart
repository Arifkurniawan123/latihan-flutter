import 'package:arif_app/m_poly.dart';
import 'package:flutter/material.dart';

class DetailPoly extends StatefulWidget {
  final Poly poly;
  const DetailPoly({super.key,required this.poly});

  @override
  State<DetailPoly> createState() => _DetailPolyState();
}

class _DetailPolyState extends State<DetailPoly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}

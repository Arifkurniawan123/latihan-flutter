import 'package:arif_app/m_poly.dart';
import 'package:arif_app/poly_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PolyPage());
}

class PolyPage extends StatelessWidget {
  const PolyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashboardPoly());
  }
}

class DashboardPoly extends StatelessWidget {
  const DashboardPoly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Poly umum'),
                onTap: () {
                  Poly polyUmum = Poly(namaPoly: 'Poly Umum');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPoly(poly: polyUmum),
                    ),
                  );
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}

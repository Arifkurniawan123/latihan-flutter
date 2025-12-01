import 'package:flutter/material.dart';
import 'package:arif_app/model/m_poly.dart';
import 'package:arif_app/nav/sidebar.dart';
import 'package:arif_app/poly_detail.dart';
import 'package:arif_app/poly_input.dart';

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
      drawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            GestureDetector(
              child: Card(child: ListTile(title: Text("Poly Umum"))),
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
            GestureDetector(
              child: Card(child: ListTile(title: Text("Poly Anak"))),
              onTap: () {
                Poly polyAnak = Poly(namaPoly: 'Poly Anak');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPoly(poly: polyAnak),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => InputPoly()),
          );
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        tooltip: "Tambah Data",
        child: Icon(Icons.add),
      ),
    );
  }
}

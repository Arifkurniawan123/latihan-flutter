import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pasien.dart';
import 'package:arif_app/nav/sidebar.dart';
import 'package:arif_app/pasien_detail.dart';
import 'package:arif_app/pasien_input.dart';

void main() {
  runApp(PasienPage());
}

class PasienPage extends StatelessWidget {
  const PasienPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashboardPasien());
  }
}

class DashboardPasien extends StatefulWidget {
  const DashboardPasien({super.key});

  @override
  State<DashboardPasien> createState() => _DashboardPasienState();
}

class _DashboardPasienState extends State<DashboardPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pasien'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pasien 1"))),
              onTap: () {
                Pasien dataPasien1 = Pasien(
                  nama: "Pasien 1",
                  noRm: '123456',
                  tl: '01-01-2000',
                  tlp: '081 2345 6789',
                  alamat: 'Pasien1@mail.com',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPasien(pasien: dataPasien1),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pasien 2"))),
              onTap: () {
                Pasien dataPasien2 = Pasien(
                  nama: "Pasien 2",
                  noRm: '123456',
                  tl: '01-01-2000',
                  tlp: '081 2345 6789',
                  alamat: 'Pasien2@mail.com',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPasien(pasien: dataPasien2),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pasien 3"))),
              onTap: () {
                Pasien dataPasien3 = Pasien(
                  nama: "Pasien 3",
                  noRm: '123456',
                  tl: '01-01-2000',
                  tlp: '081 2345 6789',
                  alamat: 'Pasien3@mail.com',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPasien(pasien: dataPasien3),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PasienInput()),
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

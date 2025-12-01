import 'package:flutter/material.dart';
import 'package:arif_app/model/m_pegawai.dart';
import 'package:arif_app/nav/sidebar.dart';
import 'package:arif_app/pegawai_detail.dart';
import 'package:arif_app/pegawai_input.dart';

void main() {
  runApp(PegawaiPage());
}

class PegawaiPage extends StatelessWidget {
  const PegawaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashboardPegawai());
  }
}

class DashboardPegawai extends StatefulWidget {
  const DashboardPegawai({super.key});

  @override
  State<DashboardPegawai> createState() => _DashboardPegawaiState();
}

class _DashboardPegawaiState extends State<DashboardPegawai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pegawai'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pegawai 1"))),
              onTap: () {
                Pegawai dataPegawai1 = Pegawai(
                  nama: "Pegawai 1",
                  nip: '123456',
                  tl: '01-01-2000',
                  tlp: '081 2345 6789',
                  email: 'pegawai1@mail.com',
                  password: 'password_pegawai1',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPegawai(pegawai: dataPegawai1),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pegawai 2"))),
              onTap: () {
                Pegawai dataPegawai2 = Pegawai(
                  nama: "Pegawai 2",
                  nip: '123456',
                  tl: '01-01-2001',
                  tlp: '081 2345 6789',
                  email: 'pegawai2@mail.com',
                  password: 'password_pegawai2',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPegawai(pegawai: dataPegawai2),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(child: ListTile(title: Text("Pegawai 3"))),
              onTap: () {
                Pegawai dataPegawai3 = Pegawai(
                  nama: "Pegawai 3",
                  nip: '123456',
                  tl: '01-01-2001',
                  tlp: '081 2345 6789',
                  email: 'pegawai3@mail.com',
                  password: 'password_pegawai3',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPegawai(pegawai: dataPegawai3),
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
            MaterialPageRoute(builder: (context) => PegawaiInput()),
          );
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        tooltip: "Tambah Data",
        child: Icon(Icons.add),
      ),
    );
  }
}

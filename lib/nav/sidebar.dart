import 'package:flutter/material.dart';
import 'package:arif_app/helper/user_info.dart';
import 'package:arif_app/home.dart';
import 'package:arif_app/helper/login.dart';
import 'package:arif_app/pasien.dart';
import 'package:arif_app/pegawai.dart';
import 'package:arif_app/poly.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  String? username = "";
  String? nama = "";
  String? email = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadUserInfo();
  }

  _loadUserInfo() async {
    final userInfo = UserInfo();
    final getNama = await userInfo.getNama();
    final getEmail = await userInfo.getEmail();

    setState(() {
      nama = getNama ?? 'User tidak terdaftar';
      email = getEmail ?? 'Email tidak terdaftar';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(nama ?? ''),
            accountEmail: Text(email ?? ''),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.blueAccent),
            ),
            decoration: const BoxDecoration(color: Colors.blueAccent),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('H O M E'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('P O L Y'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPoly()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text('P E G A W A I'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PegawaiPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_3_outlined),
            title: const Text('P A S I E N'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PasienPage()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('L O G O U T'),
            onTap: () async {
              final pref = await SharedPreferences.getInstance();
              await pref.clear();
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
    );
  }
}

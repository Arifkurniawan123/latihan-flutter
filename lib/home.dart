import 'package:flutter/material.dart';
import 'package:arif_app/nav/bottom.dart';
import 'package:arif_app/nav/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Home Dashboard'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: Sidebar(),
      body: Center(child: const Text('Dashboard')),
      bottomNavigationBar: BottomNav(scaffoldkey: _scaffoldkey),
    );
  }
}
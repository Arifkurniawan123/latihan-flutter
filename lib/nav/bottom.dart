import 'package:flutter/material.dart';
import 'package:arif_app/home.dart';

class BottomNav extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  const BottomNav({super.key, required this.scaffoldkey});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green.shade50,
      shape: CircularNotchedRectangle(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // icon 1 sidebar
            IconButton(
              tooltip: "Open Sidebar",
              onPressed: scaffoldkey.currentState?.openDrawer,
              icon: Icon(
                Icons.menu,
                color: Colors.green[800],
              ),
            ),

            // icon 2 home
            IconButton(
              tooltip: "Home",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(
                Icons.home,
                color: Colors.green[800],
              ),
            ),

            // icon 3 back
            IconButton(
              tooltip: "Back",
              onPressed: () {
                Navigator.maybePop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.green[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:arif_app/helper/login.dart';
import 'package:arif_app/helper/user_info.dart';
import 'package:flutter/material.dart';
import 'package:arif_app/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);

  runApp(MaterialApp(
    title: "aplikasi Klinik",
    home: token == null ? Login() : HomePage(),
  ));
}

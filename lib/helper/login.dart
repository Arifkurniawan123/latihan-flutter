import 'package:flutter/material.dart';
import 'package:arif_app/helper/services.dart';
import 'package:arif_app/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // var
  final _formKey = GlobalKey();
  final _userName = TextEditingController();
  final _password = TextEditingController();

  _userNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _userName,
    );
  }

  _passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      controller: _password,
      obscureText: true,
    );
  }

  _btnLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () async {
            // Kredensial
            String username = _userName.text;
            String password = _password.text;
            bool value = await LoginService().login(username, password);

            if (value) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            } else {
              AlertDialog alertDialog = AlertDialog(
                content: Text("Username Atau Password Tidak Terdaftar"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
              );

              showDialog(context: context, builder: (context) => alertDialog);
            }
          },
          child: Text("Login")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SafeArea(
                child: Center(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Login Admin",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Form(
                                  key: _formKey,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        _userNameField(),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        _passwordField(),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        _btnLogin()
                                      ],
                                    ),
                                  )),
                            )
                          ],
                        ))))),
      ),
    );
  }
}

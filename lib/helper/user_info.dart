
import 'package:shared_preferences/shared_preferences.dart';

const String token = "Token";
const String userid = "UserId";
const String username = "UserName";
const String password = "Password";
const String email = "Email";
const String nama = "Nama";

class UserInfo {
  // setter token
  Future setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter token
  Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }

  // setter userid
  Future setUserId(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter userid
  Future<String?> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }

  // setter username
  Future setUserName(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter username
  Future<String?> getUserName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }

  // setter password
  Future setPassword(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter password
  Future<String?> getPassword() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }

  // setter email
  Future setEmail(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter email
  Future<String?> getEmail() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }

  // setter nama
  Future setNama(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(token, value);
  }

  // getter nama
  Future<String?> getNama() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(token);
  }
}

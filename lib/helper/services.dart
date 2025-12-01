import 'package:arif_app/helper/user_info.dart';

class LoginService {
  Future<bool> login(String username, String password) async {
    bool isLogin = false;

    if (username == 'admin' && password == 'admin') {
      await UserInfo().setToken('10102025');
      await UserInfo().setUserId('1');
      await UserInfo().setUserName('admin');
      await UserInfo().setPassword('admin');
      await UserInfo().setEmail('admin@gmail.com');
      await UserInfo().setNama('Administrator App');
      isLogin = true;
    }

    return isLogin;
  }
}

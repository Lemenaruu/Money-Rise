import 'package:money_rise/model/admin_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedRef {
  static String auth = "auth";

  static Future<void> saveAuth(Admin admin) async {
    final shp = await SharedPreferences.getInstance();
    shp.setString(auth, admin.toJson());
  }

  static Future<Admin?> getAuth() async {
    final shp = await SharedPreferences.getInstance();
    final value = shp.getString(auth);
    if (value == null) return null;

    final admin = Admin.fromJson(value);
    return admin;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_rise/model/admin_model.dart';

final firebaseDBProvider = Provider((ref) {
  return FirebaseDB();
});

class FirebaseDB {
  final authRef = FirebaseFirestore.instance.collection("admin").doc("admin");
  Future<bool> login(Admin inputedAdmin) async {
    final snapshot = await authRef.get();
    if (snapshot.data() != null) {
      final adminFromServer = Admin.fromMap(snapshot.data()!);
      if (inputedAdmin.name == adminFromServer.name &&
          inputedAdmin.password == adminFromServer.password) {
        return true;
      } else {
        return false;
      }
    } else {
      const defaultName = "moneyrise";
      const defaultPassword = "111111";
      if (inputedAdmin.name == defaultName &&
          inputedAdmin.password == defaultPassword) {
        return true;
      } else {
        return false;
      }
    }
  }
}

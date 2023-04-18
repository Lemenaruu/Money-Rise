// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:money_rise/model/admin_model.dart';
// import 'package:money_rise/services/firebase_database.dart';
// import 'package:money_rise/utils/shared_pref.dart';

// final loginProvider =
//     StateNotifierProvider<LoginNotifier, AsyncValue<Admin?>>((ref) {
//   return LoginNotifier(
//     ref.watch(firebaseDBProvider),
//   );
// });

// class LoginNotifier extends StateNotifier<AsyncValue<Admin?>> {
//   LoginNotifier(this.db) : super(const AsyncLoading()) {
//     getAdmin();
//   }
 

//   getAdmin() async {
//     final user = await SharedRef.getAuth();
//     if (mounted) {
//       state = AsyncData(user);
//     }
//   }

//   Future<bool> login(Admin admin) async {
//     state = const AsyncLoading();
//     try {
//       final isSuccess = await db.login(admin);
//       if (isSuccess) {
//         await SharedRef.saveAuth(admin);
//         if (mounted) {
//           state = AsyncData(admin);
//         }
//         return true;
//       } else {
//         state = const AsyncError(
//             "Something went wrong!, Please try again", StackTrace.empty);
//         return false;
//       }
//     } catch (e) {
//       state = AsyncError(e.toString(), StackTrace.empty);
//       return false;
//     }
//   }
// }

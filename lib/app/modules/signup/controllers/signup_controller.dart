// ignore_for_file: unnecessary_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/routes/app_pages.dart';

class SignupController extends GetxController {
   final FirebaseAuth _auth = FirebaseAuth.instance;
 void user(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((onValue) {
      Get.toNamed(Routes.LOGIN);
    }).catchError((onError) {
      Get.snackbar('error',"signup unsucessful");
    });
  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

// ignore_for_file: unnecessary_overrides, avoid_print

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  void user(String email, String password) async {
    await auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((onValue) {
      Get.toNamed(Routes.LOGIN);
    }).catchError((onError) {
      Get.snackbar('error', "signup unsucessful");
    });
  }

  void writeData(String email, String password) async {
    final data = json.encode({
      "email": email,
      "password": password
    });

    final url = Uri.parse(
        "https://vitamart-55f23-default-rtdb.firebaseio.com/users.json");

    try {
      final response = await http.post(url, body: data);
      print(
          "Response: ${response.statusCode}"); 
    } catch (e) {
      print(e.toString()); 
    }
  }
}

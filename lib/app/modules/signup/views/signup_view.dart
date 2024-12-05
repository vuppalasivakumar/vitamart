// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, unused_field

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
// import 'package:vitamart/app/modules/login/controllers/login_controller.dart';
import 'package:vitamart/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  // final TextEditingController _UsernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/vitamart_title_logo.png"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                "assets/signuplogo.png",
                width: 180,
              ),
              const SizedBox(
                height: AppSizes.x1_75,
              ),
              Text(
                "Sign up to Continue",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: AppSizes.x2_00,
              ),
              TextField(
                onChanged: (email) {
                  controller.email.text = email;
                },
                controller: controller.email,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23.0)),
                  labelText: "enter your email",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: AppSizes.x1_75,
              ),
              TextField(
                onChanged: (password) {
                  controller.password.text = password;
                },
                controller: controller.password,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: "enter your password",
                  hintText: "******",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: AppSizes.x1_50,
              ),
              ElevatedButton(
                  onPressed: () {
                    // controller.user(email.text, password.text);
                    controller.user(
                        controller.email.text, controller.password.text);
                    controller.writeData(
                        controller.email.text, controller.password.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.orange),
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.naviblue, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: AppSizes.x1_50,
              ),
              Text(
                "Already You Have account?",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.naviblue),
              ),
              TextButton(
                  onPressed: () {
                    controller.writeData(
                        controller.email.text, controller.password.text);
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text("Login",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.naviblue,
                          fontFamily: 'Mukta',
                          fontSize: 17)))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.orange,
      //   title: Image.asset("assets/vitamart_title_logo.png"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        
        child: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/vitamart_title_logo.png"),
              Image.asset(
                "assets/loginimg.jpg",
                width:200,
              ),
              Text(
                'Login in for the best experience',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
                width: 5,
              ),
              const Text('Enter your Email&Password to continue'),
              const SizedBox(
                height: 20,
              ),
              
              TextField(
                controller: email,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Email",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "password",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Text('By Continuing , you agree to Vitamart'),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms of Use and privacy policy",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.orange,
                        ),
                  )),
              ElevatedButton(
                  onPressed: () {
                    controller.userLogin(email.text, password.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.naviblue),
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.orange, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

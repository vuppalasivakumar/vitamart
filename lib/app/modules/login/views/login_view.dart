// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController _EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.orange,
         title:Image.asset("assets/vitamart_title_logo.png"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               Image.asset(
                "assets/loginimg.jpg",
                width: 250,
               ),
              const Text(
                'Login in for the best experience',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
                width: 5,
              ),
              const Text('Enter your phone number to continue'),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _EmailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile number",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              const Text('By Continuing , you agree to FlipKart'),
            
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms of Use and privacy policy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.orange,
                        fontSize: 15),
                  )),
                  ElevatedButton(onPressed: (){}, child: Text("Submit"))
            ],
            
          ),
          
        ),
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  final _FirstNameController = TextEditingController();
  final _LastNameController = TextEditingController();
  final _MobileNumberController = TextEditingController();
  final _EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/vitamart_title_logo.png"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.white,
        actions: const [
          Icon(Icons.search, color: Color.fromARGB(255, 1, 17, 40)),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 3, 47, 107),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            // color: Colors.orange,
            height: 160,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius:38.0,
                    backgroundImage: AssetImage('assets/avathar2.png')),
                SizedBox(
                  width: 20,
                ),
                Text("or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    radius:45.0,
                    backgroundImage: AssetImage('assets/avathar3.jpg')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _FirstNameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: "FirstName"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _LastNameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: "LastName"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _MobileNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "MobileNumber",
                  hintText: "91********"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _EmailController,
              decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  hintText: "Email id",
                  labelText: "Email ID",
                  suffix: Text(
                    "verify",
                    style: TextStyle(color: Colors.blue[900], fontSize: 16),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blueColor),
                child: const Text(
                  "Update",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange),
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          const Divider(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Deactivate Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const Divider(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Delete Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ]),
      ),
    );
  }
}

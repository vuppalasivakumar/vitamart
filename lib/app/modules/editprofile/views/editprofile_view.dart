import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
                suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.cartShopping))
              ],
            )),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.lightblue, AppColors.balck])),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-photo/3d-animation-character-cartoon_113255-10754.jpg?w=740"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "or",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-photo/3d-avatar-character_113255-31681.jpg?size=626&ext=jpg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: AppColors.whitecolor,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "First Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightblue),
                        )),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "Last Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightblue),
                        )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            AppColors.lightblue,
                            AppColors.balck,
                          ]),
                        ),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColors.whitecolor),
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: TextButton(
                                onPressed: () {}, child: const Text("Update")),
                            label: const Text(
                              "Mobile Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightblue),
                            )),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: TextButton(
                                onPressed: () {}, child: const Text("Update")),
                            label: const Text(
                              "Email ID",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightblue),
                            )),
                      ),
                      const SizedBox(
                        height: 50,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

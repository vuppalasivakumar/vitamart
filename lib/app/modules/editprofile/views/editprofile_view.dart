import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/core/app_configurations/app_urls.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.cartShopping),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.lightblue, AppColors.balck],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppSizes.x6_25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: NetworkImage(Appurl.profileboy),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "or",
                  style: textTheme.titleSmall!
                      .copyWith(color: AppColors.whitecolor),
                ),
                const SizedBox(
                  width: 20,
                ),
                const CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: NetworkImage(Appurl.profilegirl),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppSizes.x25_00),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: AppColors.whitecolor,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.x2_25, right: AppSizes.x2_25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "First Name",
                          style: textTheme.titleSmall!.copyWith(
                              color: AppColors.lightblue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Last Name",
                          style: textTheme.titleSmall!.copyWith(
                              color: AppColors.lightblue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.lightblue,
                            AppColors.balck,
                          ],
                        ),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Submit',
                            style: textTheme.titleSmall!.copyWith(
                              color: AppColors.whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text("Update"),
                        ),
                        label: Text(
                          "Mobile Number",
                          style: textTheme.titleSmall!.copyWith(
                            color: AppColors.lightblue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text("Update"),
                        ),
                        label: Text(
                          "Email ID",
                          style: textTheme.titleSmall!.copyWith(
                            color: AppColors.lightblue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Divider(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Deactivate Account",
                        style: textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ),
                    const Divider(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Delete Account",
                        style: textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

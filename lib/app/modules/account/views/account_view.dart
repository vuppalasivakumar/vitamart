import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/core/app_configurations/app_urls.dart';

import 'package:vitamart/app/modules/account/controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary.withOpacity(0.3),
        title: const Text('Account View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Account",
                style: textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: [
                  const Text("Log in to get exclusive offers"),
                  const SizedBox(
                    width: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.blueColor),
                    ),
                    child: const Text(
                      "LogIn",
                      style: TextStyle(color: AppColors.whitecolor),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x2_25),
                  child: Text(
                    "Notifications",
                    style: textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_none_outlined,
                      color: AppColors.blueColor),
                  title: const Text("Tap for latest updates and offers"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x2_25),
                  child: Text(
                    "Sponsored",
                    style: textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                children: [
                  Image.network(Appurl.accountBannerSponsoredimg),
                  ListTile(
                    leading: Text(
                      "Get it Now",
                      style: textTheme.titleLarge!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x2_25),
                  child: Text(
                    "Account Settings",
                    style: textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.translate_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Select Language"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notification_add_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Notification Settings"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.headphones_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Help Center"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x1_50),
                  child: Text(
                    "Featured Offerings",
                    style: textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    child: Column(
                      children: [
                        Image.network(Appurl.shop),
                        const Text("No Cost EMIs"),
                        Text(
                          "Apply Now",
                          style: textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    child: Column(
                      children: [
                        Image.network(Appurl.bajaj),
                        const Text("All-in-one Card"),
                        Text(
                          "Apply Now",
                          style: textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    child: Column(
                      children: [
                        Image.network(Appurl.shop),
                        const Text("Lifetime Free"),
                        Text(
                          "Apply Now",
                          style: textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x2_25),
                  child: Text(
                    "Earn with Vitamart",
                    style: textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.store_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Sell on Vitamart"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 5,
              color: AppColors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.x2_25),
                  child: Text(
                    "Feedback & Information",
                    style: textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.description_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Terms,Policies and Licenses"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.question_mark_outlined,
                      color: AppColors.blueColor,
                    ),
                  ),
                  title: const Text("Browser FAQs"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

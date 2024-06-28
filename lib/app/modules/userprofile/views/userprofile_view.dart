

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/core/app_configurations/app_urls.dart';
import 'package:vitamart/app/modules/address/views/address_view.dart';
import 'package:vitamart/app/modules/editprofile/views/editprofile_view.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/userprofile_controller.dart';

class UserprofileView extends GetView<UserprofileController> {
  const UserprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UserprofileView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.x1_25),
                    child: Text(
                      "Hey!Login Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: AppSizes.x1_50),
                    child: Text("Explore"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Plus  >",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 19),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppColors.grey,
                        width: 2,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.whitecolor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSizes.x2_50),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.box,
                                  color: AppColors.blueColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Orders",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: AppColors.balck, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.grey, width: 2),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.whitecolor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSizes.x2_50),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: AppColors.blueColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Wishlist",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: AppColors.balck, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppColors.grey,
                        width: 2,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.whitecolor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSizes.x0_50),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.gifts,
                                  color: AppColors.blueColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Coupons",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: AppColors.balck, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppColors.grey,
                        width: 2,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.whitecolor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSizes.x0_50),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.headset,
                                  color: AppColors.blueColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "HelpCenter",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: AppColors.balck, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 10,
                thickness: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Notifications",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppColors.blueColor,
                    ),
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Account Settings",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    child: ListTile(
                      onTap: () {},
                      leading: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.user,
                          color: AppColors.blueColor,
                        ),
                      ),
                      title: const Text("Edit Profile"),
                      trailing: IconButton(
                        onPressed: () {
                          Get.to(() => const EditprofileView());
                        },
                        icon: const Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.wallet,
                        color: AppColors.blueColor,
                      ),
                    ),
                    title: const Text("Saved Card & Wallet"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                  ),
                  SizedBox(
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          () => const AddressView(),
                        );
                      },
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_on_outlined,
                          color: AppColors.blueColor,
                        ),
                      ),
                      title: const Text("Saved Addresses"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: ListTile(
                      onTap: () {
                        controller.builddialog(context);
                      },
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
                ],
              ),
              const Divider(
                height: 10,
                thickness: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "My Acivity",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_calendar_outlined,
                        color: AppColors.blueColor,
                      ),
                    ),
                    title: const Text("Reviews"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chat_bubble_outline_outlined,
                        color: AppColors.blueColor,
                      ),
                    ),
                    title: const Text("Questions & Answers"),
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
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Sponsored",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Card(
                child: Column(
                  children: [
                    Image.network(
                        "https://tse3.mm.bing.net/th?id=OIP.hhSZ79oQnEPq0vQwaSB2WAHaEK&pid=Api&P=0&h=180"),
                    ListTile(
                      leading: Text(
                        "Get it Now",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 20),
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Earn with Vitamart",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
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
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Featured Offerings",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
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
                          Image.network(Appurl.card),
                          const Text("No Cost EMIs"),
                          const Text(
                            "Apply Now",
                            style: TextStyle(
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
                          Image.network(Appurl.card1),
                          const Text("All-in-one Card"),
                          const Text(
                            "Apply Now",
                            style: TextStyle(
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
                          Image.network(Appurl.card2),
                          const Text("Lifetime Free"),
                          const Text(
                            "Apply Now",
                            style: TextStyle(
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: AppSizes.x1_75),
                    child: Text(
                      "Feedback & Information",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
              const Divider(height: 10, thickness: 5),
              SizedBox(
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) => AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Get.back(result: HomeView);
                                },
                                child: const Text("Close"),
                              ),
                            ],
                            title: const Text("Are You Sure"),
                            contentPadding: const EdgeInsets.all(30),
                            content: const Text("Do You Want Close This App ?"),
                          )),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(color: AppColors.blueColor, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';

import '../controllers/adressfields_controller.dart';

class AdressfieldsView extends GetView<AdressfieldsController> {
  const AdressfieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: Text(
          'My Addresses',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.whitecolor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
            ),
            style: const ButtonStyle(
              iconColor: MaterialStatePropertyAll(AppColors.whitecolor),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            style: const ButtonStyle(
              iconColor: MaterialStatePropertyAll(AppColors.whitecolor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "House No",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Road name,Area",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(AppSizes.x2_50),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "PinCode",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "City",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    backgroundColor: AppColors.blueColor),
                child: Text(
                  "Save Address",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.whitecolor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

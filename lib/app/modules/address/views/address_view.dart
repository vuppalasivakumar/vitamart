import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/modules/adressfields/views/adressfields_view.dart';

import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
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
      body: const Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            () => const AdressfieldsView(),
          );
        },
        child: const Text("+"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/routes/app_pages.dart';

import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.whitecolor,
            elevation: 2,
            title: Padding(
              padding: const EdgeInsets.only(top: AppSizes.x2_50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black),
                  ),
                  Row(
                    children: [
                      Tooltip(
                        message: 'Search',
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.CATEGORIES);
                        },
                        icon: const Icon(Icons.shopping_cart),
                      ),
                    ],
                  )
                ],
              ),
            )),
        body: Obx(() => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: controller.fetchImageurls.length,
            itemBuilder: (context, index) {
              final product = controller.fetchImageurls[index];
              final double rating =
                  double.tryParse(product['rating'].toString()) ?? 0.0;
              final int discount =
                  int.tryParse(product['discount'].toString()) ?? 0;
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSizes.x1_25),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(product['imageurl'] ?? ""),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:AppSizes.x1_25),
                          child: Text(
                            ' ${product['name'] ?? ""}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: AppColors.black),
                          ),
                        ),
                        Text(
                          'Price:${product['price'] ?? ""}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: AppColors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppSizes.x4_00),
                          child: Row(
                            children: [
                              ...List.generate(4, (starIndex) {
                                return Icon(
                                  Icons.star,
                                  color: starIndex < rating.round()
                                      ? AppColors.green
                                      : AppColors.red,
                                  size: 20,
                                );
                              }),
                              const SizedBox(width: 4),
                              Text(
                                '(${rating.toStringAsFixed(1)})',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.x1_00, vertical: AppSizes.x0_50),
                          child: Text(
                            'Discount: $discount%',
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            })
            )
            );
  }
}

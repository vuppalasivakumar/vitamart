import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import 'package:vitamart/app/modules/categories/widgets/products.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 90,
        backgroundColor: AppColors.whitecolor,
        title: SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search here',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.x3_75),
                borderSide: const BorderSide(width: 1, color: AppColors.black),
              ),
              prefixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.x3_75),
                borderSide: const BorderSide(width: 1, color: AppColors.black),
              ),
            ),
          ),
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.categories.map((category) {
                  final int index = controller.categories.indexOf(category);
                  return InkWell(
                    onTap: () {
                      controller.currentIndex.value = index;
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 95,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(top: AppSizes.x0_50),
                            child: Image.asset(category['catUrl']!),
                          ),
                        ),
                        Text(
                          category["catName"] ?? "",
                          style:Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black
                        )
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: controller.currentIndex.value == 0
                  ? Products(
                      itemlength: controller.fetchgroceyImageurls.length,
                      productImages: controller.fetchgroceyImageurls,
                    )
                  : controller.currentIndex.value == 1
                            ?  Products(itemlength: controller.fetchelectronicsImageurls.length, productImages: controller.fetchelectronicsImageurls)
                            : controller.currentIndex.value == 2
                                ?  Products(itemlength: controller.fetchFashionImageurls.length, productImages: controller.fetchFashionImageurls)
                        :   Products(itemlength: controller.fetchFurnitureImageurls.length, productImages: controller.fetchFurnitureImageurls)
                       
                    
            ),
          ],
        ),
      ),
    );
  }
}

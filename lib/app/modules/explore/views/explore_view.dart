import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/routes/app_pages.dart';

import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 2,
            title: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                      IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.camera_alt)),
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
              childAspectRatio: 0.6,
            ),
            itemCount: controller.fetchImageurls.length,
            itemBuilder: (context, index) {
              final product = controller.fetchImageurls[index];
              final double rating = double.tryParse(product['rating'].toString()) ?? 0.0;
              final int discount = int.tryParse(product['discount'].toString()) ?? 0;
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            ' ${product['name'] ?? ""}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          'Price:${product['price'] ?? ""}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          ...List.generate(4, (starIndex) {
                            return Icon(
                              Icons.star,
                              color: starIndex < rating.round()
                                  ? const Color.fromARGB(255, 26, 143, 56)
                                  : const Color.fromARGB(255, 200, 39, 39),
                              size: 20,
                            );
                          }),
                          const SizedBox(width: 4),
                          Text(
                            '(${rating.toStringAsFixed(1)})',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Text(
                        'Discount: $discount%',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.red,
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

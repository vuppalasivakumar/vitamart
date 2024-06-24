import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 245, 243, 243),
        title: SizedBox(
          height: 50,
          child: TextField(
              decoration: InputDecoration(
                  labelText: 'Search here',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)))),
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(category['catUrl']!),
                              ),
                            ),
                            Text(
                              category["catName"] ?? "",
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                child: controller.currentIndex.value == 0
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          
                        )
                      ],
                    )
                    : controller.currentIndex.value == 1
                        ? const Text("mobile")
                        : controller.currentIndex.value == 2
                            ? const Text("Fashion")
                            : const Text("Furniure"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

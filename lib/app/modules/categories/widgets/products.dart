import 'package:flutter/material.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';

class Products extends StatelessWidget {
  final int itemlength;
  final List<Map<String, String>> productImages;

  const Products(
      {super.key, required this.itemlength, required this.productImages});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: itemlength,
        itemBuilder: (context, index) {
          final item = productImages[index];
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.x1_25),
                      image: DecorationImage(
                        image: NetworkImage(item['imageurl'] ?? ""),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppSizes.x1_25),
                      child: Text(
                        item['name'] ?? "",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black
                        )
                      ),
                    ),
                    Text(
                      'Price: ${item['price'] ?? ""}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

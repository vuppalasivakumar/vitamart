// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';

class ProductsCard extends StatelessWidget {
  final String productsText;
  final Color color;
  final int itemCount;
  final List<Map> productsDetails;
  const ProductsCard({
    super.key,
    required this.productsText,
    required this.color,
    required this.itemCount,
    required this.productsDetails,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: AppColors.lightblue,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.x1_00),
              child: Text(
                productsText,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              itemCount: itemCount,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final product = productsDetails[index];
                return Card(
                  child: ListTile(
                    // contentPadding: const EdgeInsets.all(AppSizes.x0_50),
                    title: Image.network(
                      product["prdUrl"] ?? "N/A",
                      width: 100,
                      height: 110,
                    ),

                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Column(children: [
                        Text(product["prdName"] ?? "N/A"),
                        Text(product["prdPrice"] ?? "N/A")
                      ]),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

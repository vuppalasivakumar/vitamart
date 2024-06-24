import 'package:flutter/material.dart';

class Electronics extends StatelessWidget {
  final int itemlength;
  final dynamic productImages;
  const Electronics({super.key,required this.itemlength,required this.productImages});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            // itemCount: controller.fetchImageurls.length,
            itemCount: itemlength,
            itemBuilder: (context, index) {
              // final product = controller.fetchImageurls[index];
              final product = productImages[index];
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
            }
    );
  }
}
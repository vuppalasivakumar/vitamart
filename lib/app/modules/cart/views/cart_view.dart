import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import 'package:vitamart/app/core/app_configurations/app_sizes.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        elevation: 6,
        title: Text(
          'Your Cart',
          style: textTheme.headlineSmall!.copyWith(color: AppColors.whitecolor),
        ),
      ),
      body: Obx(() {
        if (controller.cartItems.isEmpty) {
          return Center(
            child: Text(
              'No products in the cart',
              style: textTheme.bodyLarge!.copyWith(fontSize: AppSizes.x2_50),
            ),
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: controller.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = controller.cartItems.keys.toList()[index];
                    final quantity =
                        controller.cartItems.values.toList()[index];
                    final totalPrice = product.price * quantity;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.x1_00, horizontal: AppSizes.x2_00),
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(AppSizes.x1_00),
                          child: Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Image.network(
                                      product.image,
                                      width: AppSizes.x10_00,
                                      height: AppSizes.x10_00,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: AppSizes.x2_00),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          product.title,
                                          style: textTheme.bodyLarge!.copyWith(
                                            fontSize: AppSizes.x2_25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: AppSizes.x1_75),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              '\u{20B9}${product.price.toStringAsFixed(2)}',
                                              style:
                                                  textTheme.bodyLarge!.copyWith(
                                                color: AppColors.balck,
                                                fontWeight: FontWeight.bold,
                                                fontSize: AppSizes.x2_25,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: AppSizes.x1_75),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Sub Total:',
                                              style: textTheme.bodyLarge,
                                            ),
                                            Text(
                                              '\u{20B9}${totalPrice.toStringAsFixed(2)}',
                                              style:
                                                  textTheme.bodyLarge!.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSizes.x2_00),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              AppSizes.x0_75),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(Icons.remove),
                                          color: AppColors.balck,
                                          onPressed: () {
                                            controller
                                                .decreaseQuantity(product);
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: AppSizes.x1_00),
                                        child: Text(
                                          quantity.toString(),
                                          style: const TextStyle(
                                            fontSize: AppSizes.x2_00,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              AppSizes.x0_75),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(Icons.add),
                                          color: AppColors.balck,
                                          onPressed: () {
                                            controller
                                                .increaseQuantity(product);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      controller.removeProduct(product);
                                    },
                                    child: const Text(
                                      'REMOVE',
                                      style: TextStyle(color: AppColors.balck),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSizes.x2_00),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.x2_00),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total:',
                      style: textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.x2_50,
                      ),
                    ),
                    Text(
                      '\u{20B9}${controller.totalAmount.toStringAsFixed(2)}',
                      style: textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.x2_50,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.x2_00, vertical: AppSizes.x2_00),
                child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Order', 'Order placed successfully!');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, AppSizes.x3_25),
                    backgroundColor: colorScheme.primary,
                  ),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(
                      fontSize: AppSizes.x2_50,
                      color: AppColors.whitecolor,
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}

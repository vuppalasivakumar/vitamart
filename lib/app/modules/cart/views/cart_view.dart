import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  CartView({super.key});
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
       backgroundColor: colorScheme.primary,
        elevation: 6,
        title:  Text(
          'Your cart',
          style: textTheme.titleLarge!.copyWith(
            color: AppColors.whitecolor
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cartController.itemCount,
              itemBuilder: (context, index) {
                final product = cartController.cartItems.keys.toList()[index];
                final quantity =
                    cartController.cartItems.values.toList()[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      leading: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                      minLeadingWidth: 100,
                      title: Text(
                        product.title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quantity: $quantity',
                            style:  TextStyle(color: colorScheme.secondary),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  cartController.decreaseQuantity(product);
                                },
                              ),
                              Text('$quantity'),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  cartController.increaseQuantity(product);
                                },
                              ),
                            ],
                          ),
                          Text(
                            '\u{20B9}${(product.price * quantity).toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(children: [
                            Expanded(
                              child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    'Remove',
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    'Buy now',
                                    style: TextStyle(
                                        color: AppColors.successgreen),
                                  )),
                            ),
                          ])
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Total',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '\u{20B9}${cartController.totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: AppColors.balck, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Order', 'Order placed successfully!');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      backgroundColor: colorScheme.primary),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(color: AppColors.whitecolor),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

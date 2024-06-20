import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vitamart/app/core/app_configurations/app_colors.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Icon(Icons.shopping_cart,
            size: 100,
            color: AppColors.grey,
            ),
            Text(
              'Missing Cart items ?',
              style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold,)
            ),
            const SizedBox(height: 20,),
            
            SizedBox(
              width: 190,
              child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blueColor,
                foregroundColor: AppColors.grey,
              ),
              child: const Text("Login"),
                )  
                ),
               const SizedBox(height: 20,),
               TextButton(onPressed: (){}, child: const Text("Continue Shopping",style: TextStyle(color: AppColors.blueColor),))
          ],
        ),
      ),
    );
  }
}

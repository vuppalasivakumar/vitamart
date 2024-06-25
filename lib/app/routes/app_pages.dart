
import 'package:get/get.dart';

import 'package:vitamart/app/modules/cart/bindings/cart_binding.dart';
import 'package:vitamart/app/modules/cart/views/cart_view.dart';
import 'package:vitamart/app/modules/home/bindings/home_binding.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
  ];
}

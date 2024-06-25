import 'package:get/get.dart';

import 'package:vitamart/app/modules/cart/bindings/cart_binding.dart';
import 'package:vitamart/app/modules/cart/views/cart_view.dart';
import 'package:vitamart/app/modules/editprofile/bindings/editprofile_binding.dart';
import 'package:vitamart/app/modules/editprofile/views/editprofile_view.dart';
import 'package:vitamart/app/modules/home/bindings/home_binding.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';
import 'package:vitamart/app/modules/login/bindings/login_binding.dart';
import 'package:vitamart/app/modules/login/views/login_view.dart';

// ignore_for_file: constant_identifier_names, prefer_const_constructors

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => EditprofileView(),
      binding: EditprofileBinding(),
    ),
  ];
}

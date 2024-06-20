import 'package:get/get.dart';

import 'package:vitamart/app/modules/account/bindings/account_binding.dart';
import 'package:vitamart/app/modules/account/views/account_view.dart';
import 'package:vitamart/app/modules/home/bindings/home_binding.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.ACCOUNT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
  ];
}

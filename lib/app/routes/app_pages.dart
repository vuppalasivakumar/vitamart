import 'package:get/get.dart';

import 'package:vitamart/app/modules/categories/bindings/categories_binding.dart';
import 'package:vitamart/app/modules/categories/views/categories_view.dart';
import 'package:vitamart/app/modules/explore/bindings/explore_binding.dart';
import 'package:vitamart/app/modules/explore/views/explore_view.dart';
import 'package:vitamart/app/modules/home/bindings/home_binding.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.CATEGORIES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () =>const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => const CategoriesView(),
      binding: CategoriesBinding(),
    ),
  ];
}

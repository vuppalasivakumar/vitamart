// app_routes.dart
// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const EXPLORE = _Paths.EXPLORE;
  static const CATEGORIES = _Paths.CATEGORIES;
}

abstract class _Paths {
  static const HOME = '/home';
  static const EXPLORE = '/explore';
  static const CATEGORIES = '/categories';
}

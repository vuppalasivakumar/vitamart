// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:vitamart/app/modules/account/bindings/account_binding.dart';
import 'package:vitamart/app/modules/account/views/account_view.dart';
import 'package:vitamart/app/modules/address/bindings/address_binding.dart';
import 'package:vitamart/app/modules/address/views/address_view.dart';
import 'package:vitamart/app/modules/adressfields/bindings/adressfields_binding.dart';
import 'package:vitamart/app/modules/adressfields/views/adressfields_view.dart';
import 'package:vitamart/app/modules/editprofile/bindings/editprofile_binding.dart';
import 'package:vitamart/app/modules/editprofile/views/editprofile_view.dart';
import 'package:vitamart/app/modules/home/bindings/home_binding.dart';
import 'package:vitamart/app/modules/home/views/home_view.dart';
import 'package:vitamart/app/modules/userprofile/bindings/userprofile_binding.dart';
import 'package:vitamart/app/modules/userprofile/views/userprofile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  
  static const INITIAL = Routes.USERPROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.USERPROFILE,
      page: () => const UserprofileView(),
      binding: UserprofileBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.ADRESSFIELDS,
      page: () => const AdressfieldsView(),
      binding: AdressfieldsBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
  ];
}

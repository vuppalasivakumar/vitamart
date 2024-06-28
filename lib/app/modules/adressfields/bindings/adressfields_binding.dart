import 'package:get/get.dart';

import '../controllers/adressfields_controller.dart';

class AdressfieldsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdressfieldsController>(
      () => AdressfieldsController(),
    );
  }
}

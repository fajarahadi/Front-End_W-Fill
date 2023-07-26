import 'package:get/get.dart';

import '../controllers/detail_depot_controller.dart';

class DetailDepotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailDepotController>(
      () => DetailDepotController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/list_depot_controller.dart';

class ListDepotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListDepotController>(
      () => ListDepotController(),
    );
  }
}

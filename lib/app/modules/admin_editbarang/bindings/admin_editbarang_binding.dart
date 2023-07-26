import 'package:get/get.dart';

import '../controllers/admin_editbarang_controller.dart';

class AdminEditbarangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminEditbarangController>(
      () => AdminEditbarangController(),
    );
  }
}

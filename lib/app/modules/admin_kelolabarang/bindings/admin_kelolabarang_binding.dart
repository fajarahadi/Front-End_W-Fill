import 'package:get/get.dart';

import '../controllers/admin_kelolabarang_controller.dart';

class AdminKelolabarangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminKelolabarangController>(
      () => AdminKelolabarangController(),
    );
  }
}

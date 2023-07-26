import 'package:get/get.dart';

import '../controllers/admin_kelolapesanan_controller.dart';

class AdminKelolapesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminKelolapesananController>(
      () => AdminKelolapesananController(),
    );
  }
}

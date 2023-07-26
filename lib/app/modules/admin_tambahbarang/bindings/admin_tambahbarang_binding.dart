import 'package:get/get.dart';

import '../controllers/admin_tambahbarang_controller.dart';

class AdminTambahbarangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminTambahbarangController>(
      () => AdminTambahbarangController(),
    );
  }
}

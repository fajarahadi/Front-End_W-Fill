import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdminTambahbarangController extends GetxController {
 TextEditingController kategoriC = TextEditingController();
 TextEditingController namabarangC = TextEditingController();
 TextEditingController keteranganC = TextEditingController();
 TextEditingController hargaC = TextEditingController();

  @override
  void onClose() {
    kategoriC.dispose();
    namabarangC.dispose();
    keteranganC.dispose();
    hargaC.dispose();
    super.onClose();
  }
}

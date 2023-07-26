import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DaftarController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController teleponC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  void onClose() {
    namaC.dispose();
    teleponC.dispose();
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}

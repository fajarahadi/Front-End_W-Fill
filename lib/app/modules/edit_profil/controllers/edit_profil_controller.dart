import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfilController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController teleponC = TextEditingController();
  TextEditingController emailC = TextEditingController();

  @override
  void onClose() {

    namaC.dispose();
    teleponC.dispose();
    emailC.dispose();
    super.onClose();
  }
}

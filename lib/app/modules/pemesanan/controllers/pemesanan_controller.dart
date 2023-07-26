import 'package:get/get.dart';

class PemesananController extends GetxController {
  var countJumlah = 0.obs;

  increment() {
    countJumlah.value++;
  }
  decrement() {
    if (countJumlah.value > 0) {
      countJumlah.value--;
    }
  }
}

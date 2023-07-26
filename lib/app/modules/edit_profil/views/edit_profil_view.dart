import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/edit_profil_controller.dart';

class EditProfilView extends GetView<EditProfilController> {
  final RxString selectedGender = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // atas
          Container(
            height: 280,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg_profil.png"),
                    fit: BoxFit.cover)),
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.PROFIL),
                    child: Container(
                      width: 24,
                      height: 24,
                      // color: Colors.blue,
                      child: Image.asset("assets/icons/back.png"),
                    ),
                  ),
                  SizedBox(width: 95),
                  Text(
                    "Edit Profil",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            ),
          ),
          // isi
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 590,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 70,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CardEditProfil(
                      namaCard: "Nama",
                      isiCard: "Fajarr",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardEditProfil(
                      namaCard: "No. Telepon",
                      isiCard: "089922422112",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardEditProfil(
                      namaCard: "Email",
                      isiCard: "Fajarahadi@gmail.com",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212C2F),
                      ),
                    ),
                    // SizedBox(height: 20),
                    Obx(
                      () => Row(
                        children: [
                          Radio<String>(
                            value: 'Laki-laki',
                            groupValue: selectedGender.value,
                            onChanged: (value) {
                              selectedGender.value = value!;
                            },
                          ),
                          Text('Laki-laki'),
                          Radio<String>(
                            value: 'Perempuan',
                            groupValue: selectedGender.value,
                            onChanged: (value) {
                              selectedGender.value = value!;
                            },
                          ),
                          Text('Perempuan'),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                    ElevatedButton(
                      onPressed: () => Get.offAllNamed(Routes.PROFIL),
                      child: Text("Simpan"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF2676F3),
                        fixedSize: Size(Get.width, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // poto
          Positioned(
              top: 135,
              left: 126,
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFFF4F4F4),
                          width: 10,
                        )),
                    child: Image.asset(
                      "assets/images/profile.png",
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 85,
                    child: Container(
                      width: 30,
                      height: 30,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF2676F3),
                      ),
                      child: Image.asset(
                        "assets/icons/kamera.png",
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class CardEditProfil extends StatelessWidget {
  CardEditProfil({
    Key? key,
    required this.namaCard,
    required this.isiCard,
  }) : super(key: key);

  final String namaCard;
  final String isiCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width,
      height: 54,
      // color: Colors.amber,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xFFD5D5D5),
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            namaCard,
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFFAEAEAE),
            ),
          ),
          SizedBox(height: 4),
          Text(
            isiCard,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF283134),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:w_fill/app/modules/home/views/home_view.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
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
          ),
          // isi
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 24),
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
                padding: EdgeInsets.only(top: 70),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // biodata
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Fajarr",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF212C2F)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Fajarahadi@gmail.com",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFB1B1B1)),
                            ),
                          ],
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () => Get.offAllNamed(Routes.EDIT_PROFIL),
                          child: Container(
                              width: 24,
                              height: 24,
                              // color: Colors.green,
                              child: Image.asset("assets/icons/edit.png")),
                        ),
                      ],
                    ),
                    // informasi
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              "Informasi",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF212C2F)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CardInformasi(
                              namaInformasi: "Daftar Alamat",
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            CardInformasi(
                              namaInformasi: "Bahasa",
                            ),
                            SizedBox(height: 110),
                            OutlinedButton(
                              onPressed: () =>
                                  Get.offAllNamed(Routes.LOGIN),
                              child: Text(
                                "Keluar",
                                style: TextStyle(fontSize: 14,
                                color: Color(0xFFE73030)),
                              ),
                              style: OutlinedButton.styleFrom(
                                fixedSize: Size(Get.width, 47),
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0xFFE73030)
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Card(
                        elevation: 4,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 77,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () => Get.offAllNamed(Routes.HOME),
                                child: ButtonNavbar(
                                  icon: "beranda",
                                  status: false,
                                  title: "Beranda",
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.offAllNamed(Routes.PESANAN),
                                child: ButtonNavbar(
                                  icon: "pesanan",
                                  status: false,
                                  title: "Pesanan",
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.offAllNamed(Routes.PROFIL),
                                child: ButtonNavbar(
                                  icon: "profil",
                                  status: true,
                                  title: "Profil",
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
          // poto
          Positioned(
              top: 135,
              left: 126,
              child: Container(
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
              )),
        ],
      ),
    );
  }
}

class CardInformasi extends StatelessWidget {
  CardInformasi({
    Key? key,
    
    required this.namaInformasi,

  }) : super(key: key);

  final String namaInformasi;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(namaInformasi,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF212C2F),
              ),
            ),
            Container(
                width: 24,
                height: 24,
                child: Image.asset("assets/icons/right.png"))
          ],
        ),
      ),
    );
  }
}

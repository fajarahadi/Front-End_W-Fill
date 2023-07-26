import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/admin_home_controller.dart';

class AdminHomeView extends GetView<AdminHomeController> {
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
                    Center(
                      child: Text(
                        "Yusan Water",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212C2F)),
                      ),
                    ),
                    SizedBox(height: 40,),
                    // informasi
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //pesanan
                            GestureDetector(
                              onTap: () => Get.offAllNamed(Routes.ADMIN_KELOLAPESANAN),
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset("assets/logo/kelolapesanan.png"),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Pesanan",
                                    style: TextStyle(
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                        color: Color(0xFF212C2F)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 60,),
                            //barang
                            GestureDetector(
                              onTap: () => Get.offAllNamed(Routes.ADMIN_KELOLABARANG),
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset("assets/logo/kelolabarang.png"),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Barang",
                                    style: TextStyle(
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                        color: Color(0xFF212C2F)),
                                  ),
                                ],
                              ),
                            ),
                            
                            SizedBox(
                              height: 16,
                            ),
                          ],
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
              left: 135,
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
                  "assets/logo/profiltoko.png",
                ),
              )),
        ],
      ),
    );
  }
}

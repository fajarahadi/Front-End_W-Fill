import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/admin_editbarang_controller.dart';

class AdminEditbarangView extends GetView<AdminEditbarangController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFF),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Get.offAllNamed(Routes.ADMIN_KELOLABARANG),
            child: Container(
              margin: EdgeInsets.only(left: 30),
              child: Image.asset(
                "assets/icons/back.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Container(
              child: Text(
            'Edit Barang',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          centerTitle: true,
          backgroundColor: Color(0xFF2676F3),
          elevation: 0,
        ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 50,),
              Container(
                child: Image.asset("assets/logo/tambahbarang.png"),
              ),
              SizedBox(height: 60,),
              Center(
              child: Container(
                width: 327,
                height: 47,
                color: Color(0xFFFFFFFF),
                child: TextField(
                  controller: controller.kategoriC,
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  style: TextStyle(fontSize: 14,),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Kategori",
                  ),
                ),
              ),
              ),
              
              SizedBox(height: 20),

              Center(
                child: Container(
                  width: 327,
                  height: 47,
                  color: Color(0xFFFFFFFF),
                  child: TextField(
                    controller: controller.namabarangC,
                    keyboardType: TextInputType.name,
                    autocorrect: false,
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Nama Barang",
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 20),

              Center(
                child: Container(
                  width: 327,
                  height: 47,
                  color: Color(0xFFFFFFFF),
                  child: TextField(
                    controller: controller.keteranganC,
                    keyboardType: TextInputType.name,
                    autocorrect: false,
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Keterangan",
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 20),

              Center(
                child: Container(
                  width: 327,
                  height: 47,
                  color: Color(0xFFFFFFFF),
                  child: TextField(
                    controller: controller.hargaC,
                    keyboardType: TextInputType.name,
                    autocorrect: false,
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Harga",
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 100),

              ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.ADMIN_KELOLABARANG),
                child: Text("Simpan"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF2676F3),
                  fixedSize: Size(327, 47),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

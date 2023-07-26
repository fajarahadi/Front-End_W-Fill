import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/admin_kelolabarang_controller.dart';

class AdminKelolabarangView extends GetView<AdminKelolabarangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF8FAFF),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Get.offAllNamed(Routes.ADMIN_HOME),
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
            'Barang',
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
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.ADMIN_TAMBAHBARANG),
                    child: Text(
                      'Tambah Barang',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2676F3)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardBarangAdmin(
                    barang: "assets/logo/ro.png",
                    namaBarang: "RO",
                    keteranganBarang: "Melalui proses Penyaringan",
                    hargaBarang: "Rp.6.000",
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class CardBarangAdmin extends StatelessWidget {
  CardBarangAdmin({
    Key? key,
    required this.barang,
    required this.namaBarang,
    required this.keteranganBarang,
    required this.hargaBarang,
  }) : super(key: key);

  final String barang;
  final String namaBarang;
  final String keteranganBarang;
  final String hargaBarang;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                // image
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFFE6E6E6),
                        width: 1,
                      )),
                  child: Image.asset(barang),
                ),
                SizedBox(
                  width: 15,
                ),
                // title
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        namaBarang,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF212C2F)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        keteranganBarang,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 102, 99, 99)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        hargaBarang,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212C2F)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Get.offAllNamed(Routes.ADMIN_EDITBARANG),
                  child: Container(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/sunting.png"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/sampah.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

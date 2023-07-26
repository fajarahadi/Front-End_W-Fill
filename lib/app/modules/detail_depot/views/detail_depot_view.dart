import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/detail_depot_controller.dart';

class DetailDepotView extends GetView<DetailDepotController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 280,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/depotyusan.png"),
                    fit: BoxFit.cover)),
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.LIST_DEPOT),
                    child: Container(
                      width: 44,
                      height: 44,
                      // color: Colors.blue,
                      child: Image.asset("assets/icons/back2.png"),
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    // color: Colors.green,
                    child: Image.asset("assets/icons/love.png"),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 540,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yusan Water",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF212C2F)),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Jl. Kober 191, Purwokerto Utara",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 102, 99, 99)),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Buka Jam 07.00 - 17.00",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 102, 99, 99)),
                                ),
                              ],
                            ),
                            Container(
                                width: 24,
                                height: 24,
                                // color: Colors.green,
                                child: Image.asset("assets/icons/map.png")),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Isi Ulang",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 41, 53, 56),
                              ),
                            ),
                            SizedBox(height: 10,),
                            CardDetail(
                              produk: "assets/logo/uv.png",
                              namaProduk: "UV",
                              keteranganProduk: "Melalui proses sterilisasi",
                              hargaProduk: "Rp.6.000",
                            ),
                            SizedBox(height: 10,),
                            CardDetail(
                              produk: "assets/logo/ro.png",
                              namaProduk: "RO",
                              keteranganProduk: "Melalui proses penyaringan",
                              hargaProduk: "Rp.6.000",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Merek",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 41, 53, 56),
                              ),
                            ),
                            SizedBox(height: 10,),
                            CardDetail(
                              produk: "assets/logo/aqua.png",
                              namaProduk: "Aqua",
                              keteranganProduk: "-",
                              hargaProduk: "Rp.10.000",
                            ),
                            SizedBox(height: 10,),
                            CardDetail(
                              produk: "assets/logo/lemineral.png",
                              namaProduk: "Le Minerale",
                              keteranganProduk: "-",
                              hargaProduk: "Rp.9.000",
                            ),
                            SizedBox(height: 40,),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  CardDetail({
    Key? key,

    required this.produk,
    required this.namaProduk,
    required this.keteranganProduk,
    required this.hargaProduk,

  }) : super(key: key);

  final String produk;
  final String namaProduk;
  final String keteranganProduk;
  final String hargaProduk;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                  child: Image.asset(produk),
                ),
                SizedBox(
                  width: 15,
                ),
                // title
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        namaProduk,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF212C2F)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        keteranganProduk,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(
                                255, 102, 99, 99)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        hargaProduk,
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
            ElevatedButton(
              onPressed: () =>
                  Get.offAllNamed(Routes.PEMESANAN),
              child: Text(
                "Pesan",
                style: TextStyle(fontSize: 14),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2676F3),
                fixedSize: Size(79, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

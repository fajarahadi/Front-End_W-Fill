import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/pemesanan_controller.dart';

class PemesananView extends GetView<PemesananController> {
  final PemesananController c = Get.put(PemesananController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFF),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.offAllNamed(Routes.DETAIL_DEPOT),
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
          'Pemesanan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        centerTitle: true,
        backgroundColor: Color(0xFF2676F3),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // view
              Expanded(
                  child: ListView(
                children: [
                  Column(
                    children: [
                      // alamat
                      Container(
                        width: Get.width,
                        height: 110,
                        color: Color(0xFFFFFFFF),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // icon
                              Container(
                                  height: 24,
                                  width: 24,
                                  child:
                                      Image.asset("assets/icons/alamat.png")),
                              SizedBox(width: 12),
                              // alamat
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Alamat Pengiriman",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2D3B40)),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Fajarr",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF2D3B40)),
                                    ),
                                    Text(
                                      "081203947474",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF2D3B40)),
                                    ),
                                    Text(
                                      "Jl. Pamulang XIII No.14, RT.2/RW.3, Mangga Dua, Kecamatan Purwokerto Utara, Banyumas",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF2D3B40)),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              // icon
                              Container(
                                  height: 24,
                                  width: 24,
                                  margin: EdgeInsets.symmetric(vertical: 24),
                                  child: Image.asset("assets/icons/right.png"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),

                      // detail
                      Column(
                        children: [
                          Container(
                            height: 39,
                            width: Get.width,
                            color: Color(0xFFFFFFFF),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            child: Text(
                              "Yusan Water",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2D3B40)),
                            ),
                          ),
                          Container(
                            height: 101,
                            color: Color(0xFFFFFFFF),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 11),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 80,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Color(0xFFE6E6E6),
                                            width: 1,
                                          )),
                                      child:
                                          Image.asset("assets/logo/galon.png")),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "RO",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF2D3B40)),
                                        ),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Text(
                                          "RP.6.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF2D3B40)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    // count
                                    children: [
                                      GestureDetector(
                                        onTap: () => c.decrement(),
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              "assets/icons/minus.png"),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Obx(() => Container(
                                              child: Text(
                                            "${c.countJumlah.toString()}",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ))),
                                      SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () => c.increment(),
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              "assets/icons/plus.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      // total
                      Container(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          children: [
                            // Pesan
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              width: Get.width,
                              height: 48,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color(0xFFE8E8E8),
                                width: 1,
                              ))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pesan: ",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF2D3B40)),
                                  ),
                                  Text(
                                    "Silahkan tinggalkan pesan...",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFFAEAEAE)),
                                  ),
                                ],
                              ),
                            ),
                            // Total
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                width: Get.width,
                                height: 48,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Pesanan: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3B40)),
                                    ),
                                    Text(
                                      "Rp.12.000",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3B40)),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
              // bottom
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 177, 177, 177).withOpacity(0.1),
                          blurRadius: 15,
                          offset: Offset(0, -4)
                        )
                      ]
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Harga",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2D3B40)),
                          ),
                          Text(
                            "Rp.12.000",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3B40)),
                          ),
                        ],
                      ),

                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // titlePadding: EdgeInsets.symmetric(horizontal: 37),
                                title: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/logo/berhasil.png",
                                    height: 95,
                                    width: 133,),
                                    SizedBox(height: 20,),
                                    Text("Pesanan Berhasil",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF55CE25),
                                    )),
                                    SizedBox(height: 10,),
                                    Text(
                                    "Pesananmu sedang diantar kurir",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFFAEAEAE),
                                    ),),
                                  ],
                                ),
                                content: Container(
                                  height: 130,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      ElevatedButton(
                                        onPressed: () =>Get.offAllNamed(Routes.PESANAN), 
                                        child: Text(
                                          "Lihat Pesanan",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:Color(0xFF2676F3),
                                          fixedSize: Size(255, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15,),

                                      OutlinedButton(
                                        onPressed: () =>Get.offAllNamed(Routes.HOME),
                                        child: Text(
                                          "Kembali ke Home",
                                          style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2676F3)),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          fixedSize: Size(255, 50),
                                          side: BorderSide(
                                            width: 1,
                                            color: Color(0xFF2676F3)
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // actions: [
                                //   TextButton(
                                //     onPressed: () {
                                //       // Aksi yang diambil ketika tombol "OK" ditekan
                                //       Navigator.of(context).pop();
                                //     },
                                //     child: Text("OK"),
                                //   ),
                                // ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "Buat Pesanan",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF2676F3),
                          fixedSize: Size(182, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      )


                      // ElevatedButton(
                      //   onPressed: (() {}), 
                      //   child: Text(
                      //     "Buat Pesanan",
                      //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      //   ),
                      //   style: ElevatedButton.styleFrom(
                      //     primary:Color(0xFF2676F3),
                      //     fixedSize: Size(182, 50),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //   ),
                      // )
                    ],
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

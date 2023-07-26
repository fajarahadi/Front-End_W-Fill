import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/admin_kelolapesanan_controller.dart';

class AdminKelolapesananView extends GetView<AdminKelolapesananController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Pesanan',
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
                SizedBox(
                  // height: context.mediaQueryPadding.top,
                  height: 30,
                ),
                //switch
                Container(
                  width: 327,
                  height: 37,
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          "Pesanan",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Riwayat",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                    labelColor: Color(0xFFF8C957),
                    indicator: BoxDecoration(
                        color: Color(0xFF2676F3),
                        borderRadius: BorderRadius.circular(10)),
                    unselectedLabelColor: Color(0xFFAEAEAE),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Proses
                      ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CardPesananAdmin(
                                  pelanggan: "Fajarr",
                                  tanggalPesan: "13 Nov 2022",
                                  produk: "assets/logo/galon.png",
                                  namaProduk: "RO",
                                  pesan: "Minta tisunya 2",
                                  hargaProduk: "Rp.6.000",
                                  jumlahProduk: "2",
                                ),
                                SizedBox(height: 20,),
                                CardPesananAdmin(
                                  pelanggan: "Fajarr",
                                  tanggalPesan: "13 Nov 2022",
                                  produk: "assets/logo/galon.png",
                                  namaProduk: "RO",
                                  pesan: "Minta tisunya 2",
                                  hargaProduk: "Rp.6.000",
                                  jumlahProduk: "2",
                                ),
                                SizedBox(height: 20,),
                                CardPesananAdmin(
                                  pelanggan: "Fajarr",
                                  tanggalPesan: "13 Nov 2022",
                                  produk: "assets/logo/galon.png",
                                  namaProduk: "RO",
                                  pesan: "Minta tisunya 2",
                                  hargaProduk: "Rp.6.000",
                                  jumlahProduk: "2",
                                ),
                                SizedBox(height: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Selesai
                      ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFF5F5F5)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      //tanggal
                                      Container(
                                        width: 63,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Tanggal",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF212C2F)),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "13-11-2022",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF212C2F)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              "10-11-2022",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF212C2F)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //pelanggan
                                      Container(
                                        width: 69,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Pelanggan",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                "Fajarr",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                "Fajarr",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                          ],
                                        ),
                                      ),
                                      //barang
                                      Container(
                                        width: 57,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Barang",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                "RO",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                "RO",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                          ],
                                        ),
                                      ),
                                      //total
                                      Container(
                                        width: 48,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Total",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                "18.000",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                "18.000",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                          ],
                                        ),
                                      ),
                                      //status
                                      Container(
                                        width: 40,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Status",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                "Proses",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                "Selesai",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF212C2F)),
                                              ),
                                              SizedBox(height: 5,),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardPesananAdmin extends StatelessWidget {
  CardPesananAdmin({
    Key? key,
    required this.pelanggan,
    required this.tanggalPesan,
    required this.produk,
    required this.namaProduk,
    required this.pesan,
    required this.hargaProduk,
    required this.jumlahProduk,
  }) : super(key: key);

  final String pelanggan;
  final String tanggalPesan;
  final String produk;
  final String namaProduk;
  final String pesan;
  final String hargaProduk;
  final String jumlahProduk;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pelanggan,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF212C2F)),
                ),
                Text(
                  tanggalPesan,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 92, 104, 107)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        namaProduk,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF212C2F)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        pesan,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 102, 99, 99)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            hargaProduk,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212C2F)),
                          ),
                          Text(
                            jumlahProduk,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212C2F)),
                          ),
                        ],
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Tolak",
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE73030),
                    fixedSize: Size(79, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Terima",
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF55CE25),
                    fixedSize: Size(79, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
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

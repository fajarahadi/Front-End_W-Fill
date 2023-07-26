import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';
import 'package:w_fill/app/modules/home/views/home_view.dart';

import '../controllers/pesanan_controller.dart';

class PesananView extends GetView<PesananController> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child:Scaffold(
      backgroundColor: Color(0xFFF8FAFF),
      body: Stack(
        children: [
          Container(
            height: 25,
            color: Color(0xFF2676F3)
          ),
          Column(
            children: [
              SizedBox(
                height: 70,
              ),
              //switch
              Container(
                width: 327,
                height: 37,
                decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(tabs: [
                  Tab(
                    child: 
                    Text("Proses",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                  Tab(
                    child: 
                    Text("Selesai",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                ],
                labelColor: Color(0xFFF8C957),
                indicator: BoxDecoration(
                  color: Color(0xFF2676F3),
                  borderRadius: BorderRadius.circular(10)
                ),
                unselectedLabelColor: Color(0xFFAEAEAE),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: TabBarView(
                  children: [
                    // Proses
                    ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              //card
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: false,
                                statusPesanan: "Sedang diantar",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Diterima",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: false,
                                statusPesanan: "Sedang diantar",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Diterima",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: false,
                                statusPesanan: "Sedang diantar",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Diterima",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: false,
                                statusPesanan: "Sedang diantar",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Diterima",
                              ),
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
                              //card
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: true,
                                statusPesanan: "Selesai",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Beli Lagi",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: true,
                                statusPesanan: "Selesai",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Beli Lagi",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: true,
                                statusPesanan: "Selesai",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Beli Lagi",
                              ),
                              SizedBox(height: 10,),
                              CardPesanan(
                                namaDepot: "Yusan Water",
                                status: true,
                                statusPesanan: "Selesai",
                                produk: "assets/logo/galon.png",
                                namaProduk: "RO",
                                jumlahProduk: "2",
                                hargaProduk: "Total: Rp.18.000",
                                tanggalBeli: "13 November 2022",
                                namaButton: "Beli Lagi",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // navbar
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
                          status: true,
                          title: "Pesanan",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAllNamed(Routes.PROFIL),
                        child: ButtonNavbar(
                          icon: "profil",
                          status: false,
                          title: "Profil",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

class CardPesanan extends StatelessWidget {
  CardPesanan({
    Key? key,
    required this.status,
    required this.namaDepot,
    required this.statusPesanan,
    required this.produk,
    required this.namaProduk,
    required this.jumlahProduk,
    required this.hargaProduk,
    required this.tanggalBeli,
    required this.namaButton,
  }) : super(key: key);

  final bool status;
  final String namaDepot;
  final String statusPesanan;
  final String produk;
  final String namaProduk;
  final String jumlahProduk;
  final String hargaProduk;
  final String tanggalBeli;
  final String namaButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            // title
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  namaDepot,
                  style: TextStyle(
                      color: Color.fromARGB(255, 75, 83, 87),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  statusPesanan,
                  style: TextStyle(
                    color:(status == true) ? Color(0xFF55CE25) : Color(0xFFF8C957),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // isi
            Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE8E8E8),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namaProduk,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 98, 100, 100)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          jumlahProduk,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFFAEAEAE)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          hargaProduk,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF212C2F)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // tgl
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  tanggalBeli,
                  style: TextStyle(fontSize: 12, color: Color(0xFFAEAEAE)),
                ),
                ElevatedButton(
                  onPressed: () => (status == true) ? Get.offAllNamed(Routes.PEMESANAN) : (() {}),
                  child: Text(
                    namaButton,
                    style: TextStyle(fontSize: 12),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: (status == true) ? Color(0xFF2676F3) : Color(0xFFAEAEAE),
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.offAllNamed(Routes.HOME),
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
          'Notifikasi',
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
              // atas
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semua notifikasi (2)',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Tandain semua telah dibaca',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF0090FF)),
                      ),
                    ],
                  ),
                ),
              ),
              // bawah
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ItemNotifikasi(
                      icon: "assets/icons/timer.png",
                      title: "Sudah Waktunya Anda Mengisi Galon",
                      isi: "Segera beli galon",
                      time: "sehari yang lalu",
                      nod: true,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ItemNotifikasi(
                      icon: "assets/icons/success.png",
                      title: "Pembelian Berhasil",
                      isi:
                          "Terimakasih sudah melakukan pemesanan di Yusan Water",
                      time: "2 hari yang lalu",
                      nod: true,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ItemNotifikasi(
                      icon: "assets/icons/dollar.png",
                      title: "Yusan Water Sedang Diskon!",
                      isi: "Dapatkan diskon sampai 20%",
                      time: "2 hari yang lalu",
                      nod: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFFF8FAFF),
    );
  }
}

class ItemNotifikasi extends StatelessWidget {
  ItemNotifikasi({
    Key? key,
    required this.icon,
    required this.title,
    required this.isi,
    required this.time,
    required this.nod,
  }) : super(key: key);

  final String icon;
  final String title;
  final String isi;
  final String time;
  final bool nod;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE8E8E8),
            width: 1,
          )
        )
      ),
      child: Container(
      color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // icon
            children: [
              Container(
                height: 40,
                width: 40,
                color: Color(0xFF0090FF),
                child: Image.asset(icon),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3B40)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    isi,
                    style: TextStyle(fontSize: 12, color: Color(0xFF2D3B40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 10, color: Color(0xFFAEAEAE)),
                  ),
                ],
              )),
              Container(
                height: 10,
                width: 10,
                child: (nod == true)? Image.asset("assets/icons/nod.png"): Container(color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

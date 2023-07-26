import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/list_depot_controller.dart';

class ListDepotView extends GetView<ListDepotController> {
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
          'List Depot',
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
          ListView(
            children: [
            Column(
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Get.offAllNamed(Routes.DETAIL_DEPOT),
                child: ListDepot(
                  image: "assets/images/yusanwater.png",
                  title: "Yusan Water",
                  alamat: "Jl. Kober 191, Purwokerto Utara",
                  waktu: "Buka Jam 07.00 - 17.00",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Get.offAllNamed(Routes.DETAIL_DEPOT),
                child: ListDepot(
                  image: "assets/images/rouv.png",
                  title: "RO+UV",
                  alamat: "Jl. Kober 191, Purwokerto Utara",
                  waktu: "Buka Jam 07.00 - 21.00",
                ),
              ),
            ],
          ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFFF8FAFF),
    );
  }
}

class ListDepot extends StatelessWidget {
  ListDepot({
    Key? key,
    required this.image,
    required this.title,
    required this.alamat,
    required this.waktu,
  }) : super(key: key);

  final String image;
  final String title;
  final String alamat;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          color: Color(0xFFFFFFFF),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(image),
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3B40),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      alamat,
                      style: TextStyle(fontSize: 12, color: Color(0xFFAEAEAE)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      waktu,
                      style: TextStyle(fontSize: 12, color: Color(0xFF2D3B40)),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

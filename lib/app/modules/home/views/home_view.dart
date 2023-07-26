import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.only(top: 30),
          child: RichText(
              text: TextSpan(
                  text: "Hallo, ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  children: [
                TextSpan(
                  text: "Fajarr",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.offAllNamed(Routes.NOTIFIKASI),
            child: Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(right: 24),
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/notifikasi.png",
                  fit: BoxFit.contain,
                )),
          ),
        ],
        backgroundColor: Color(0xFF2676F3),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 190,
              width: Get.width,
              color: Color(0xFF2676F3),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 42),
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  // height: 220,
                  // width: 350,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            controller.current.value = index;
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.carouselController.animateToPage(entry.key),
                            child: Obx(
                              ()=>Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric( horizontal: 4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness == Brightness.dark
                                          ? Colors.white
                                          : Color.fromARGB(255, 38, 118, 243))
                                      .withOpacity(controller.current.value == entry.key ? 0.9 : 0.4)),
                            ),
                            )
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 30),
                Expanded(
                    child: Container(
                  // color: Color.fromARGB(255, 255, 72, 0),
                  child: Column(
                    children: [
                      // body
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          children: [
                            Text(
                              "Kategori",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      Get.offAllNamed(Routes.LIST_DEPOT),
                                  child: ItemKategori(
                                    title: "RO",
                                    icon: "assets/logo/ro.png",
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Get.offAllNamed(Routes.LIST_DEPOT),
                                  child: ItemKategori(
                                    title: "UV",
                                    icon: "assets/logo/uv.png",
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Get.offAllNamed(Routes.LIST_DEPOT),
                                  child: ItemKategori(
                                    title: "Aqua",
                                    icon: "assets/logo/aqua.png",
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Get.offAllNamed(Routes.LIST_DEPOT),
                                  child: ItemKategori(
                                    title: "Le Minerale",
                                    icon: "assets/logo/lemineral.png",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 32),
                            Text(
                              "Artikel",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            GestureDetector(
                              onTap: () {},
                              child: ItemArtikel(
                                image: "assets/images/artikel1.png",
                                title: "4 Manfaat Air Isi Ulang RO",
                                kalimat:
                                    "Banyak sekali ahli kesehatan yang mengatakan bahwa mengkonsumsi air putih paling cocok untuk kesehatan tubuh. Namun perlu diingat, sekarang ini air putih sendiri",
                              ),
                            ),
                            SizedBox(height: 4),
                            GestureDetector(
                              onTap: () {},
                              child: ItemArtikel(
                                image: "assets/images/artikel3.png",
                                title: "Galon Isi Ulang Berbahaya?",
                                kalimat:
                                    "Tidak sedikit masyarakat yang mengandalkan air minum isi ulang karena memang harganya relatif murah dan praktis karena bisa digunakan untuk minum hingga memasak.",
                              ),
                            ),
                            SizedBox(height: 4),
                            GestureDetector(
                              onTap: () {},
                              child: ItemArtikel(
                                image: "assets/images/artikel2.png",
                                title: "Air Galon Isi Ulang Aman?",
                                kalimat:
                                    "Air galon isi ulang sudah menjadi kebutuhan sehari-hari di rumah tangga. Barang kali sejumlah ibu rumah tangga mempertanyakan keamanan kemasan galon yang terbuat dari plastik.",
                              ),
                            ),
                          ],
                        ),
                      ),
                      // navigation
                      Card(
                        elevation: 4,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 77,
                          // color: Color.fromARGB(244, 144, 255, 159),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () => Get.offAllNamed(Routes.HOME),
                                child: ButtonNavbar(
                                  icon: "beranda",
                                  status: true,
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
                                  status: false,
                                  title: "Profil",
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFF8FAFF),
    );
  }
}

final List<String> imgList = [
  "assets/images/iklan.png",
  "assets/images/iklan2.png",
  "assets/images/iklan3.png",
  "assets/images/iklan4.png",
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover,),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   colors: [
                          //     Color.fromARGB(200, 0, 0, 0),
                          //     Color.fromARGB(0, 0, 0, 0)
                          //   ],
                          //   begin: Alignment.bottomCenter,
                          //   end: Alignment.topCenter,
                          // ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class ItemArtikel extends StatelessWidget {
  ItemArtikel({
    Key? key,
    required this.image,
    required this.title,
    required this.kalimat,
  }) : super(key: key);

  final String image;
  final String title;
  final String kalimat;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 65, width: 65, child: Image.asset(image)),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    kalimat,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 126, 126, 126)),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          child: Image.asset(
            icon,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class ButtonNavbar extends StatelessWidget {
  ButtonNavbar({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 24,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-on.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          icon,
          style: TextStyle(
            color: (status == true) ? Color(0xFF2676F3) : Color(0xFFAEAEAE),
          ),
        ),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

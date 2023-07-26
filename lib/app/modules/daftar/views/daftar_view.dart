import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 10),
            
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            // SizedBox(height: 10),
            Center(
              child: Container(
                width: 327,
                height: 47,
                child: TextField(
                  controller: controller.namaC,
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Nama",
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 20),

            Center(
              child: Container(
                width: 327,
                height: 47,
                child: TextField(
                  controller: controller.teleponC,
                  keyboardType: TextInputType.phone,
                  autocorrect: false,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "No. Telepon",
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 20),

            Center(
              child: Container(
                width: 327,
                height: 47,
                child: TextField(
                  controller: controller.emailC,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 20),

            Center(
              child: Container(
                width: 327,
                height: 47,
                child: TextField(
                  controller: controller.passC,
                  keyboardType: TextInputType.visiblePassword,
                  autocorrect: false,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Password",
                    suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 80),

            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2676F3),
                fixedSize: Size(327, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 116),
            
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Sudah memiliki akun? ",
                  style: TextStyle(color: Color(0xFF212C2F), fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Masuk",
                      style: TextStyle(
                        color: Color(0xFF2676F3),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      recognizer: TapGestureRecognizer()
                      ..onTap = ()=> Get.offAllNamed(Routes.LOGIN)
                    )
                  ]
                )), 
            ),
          ],
        ),
      ),
    );
  }
}

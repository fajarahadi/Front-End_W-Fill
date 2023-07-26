import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/admin_login_controller.dart';

class AdminLoginView extends GetView<AdminLoginController> {
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
            SizedBox(height: 16),
            
            Center(
              child: Container(alignment: Alignment.centerRight,
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(
                    color: Color(0xFF212C2F),
                    fontSize: 14,
                  ),
                ), 
              ),
            ),
            
            SizedBox(height: 47),

            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.ADMIN_HOME),
              child: Text("Masuk"),
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
      ),

    );
  }
}

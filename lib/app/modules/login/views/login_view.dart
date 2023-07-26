import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:w_fill/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
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
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("Masuk"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2676F3),
                fixedSize: Size(327, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            
            SizedBox(height: 32),

            Center(
              child: Text(
                "Atau masuk menggunakan",
                style: TextStyle(
                  color: Color(0xFFAEAEAE),
                  fontSize: 14,
                ),),
            ),

            SizedBox(height: 48),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/google.png"),
                      SizedBox(width: 8),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFAEAEAE),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(119, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFFC9C9C9)
                      ))
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/facebook.png"),
                      SizedBox(width: 8),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFAEAEAE),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(140, 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFFC9C9C9)
                      ))
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),

            Center(
              child: RichText(
                text: TextSpan(
                  text: "Tidak memiliki akun? ",
                  style: TextStyle(color: Color(0xFF212C2F), fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Daftar",
                      style: TextStyle(
                        color: Color(0xFF2676F3),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      recognizer: TapGestureRecognizer()
                      ..onTap = ()=> Get.offAllNamed(Routes.DAFTAR)
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


import '../../controllers/google_signin_controller.dart';
import '../../utils/app_constants.dart';
import 'signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final GoogleSignInController _googleSignInController = Get.put(GoogleSignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appSecondaryColor,
        title: const Text(
          "Welcome to my app",
          style: TextStyle(
            color: AppConstant.appSecondaryColor,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset("assets/images/splash-icon.json"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: const Text(
                "Happy Shopping",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: Get.height / 12),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    "assets/images/final-google-logo.png",
                    width: Get.width / 12,
                    height: Get.height / 12,
                  ),
                  label: const Text(
                    "Sign in with google",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {
                    _googleSignInController.signInWithGoogle();
                  },
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.email,
                    color: AppConstant.appTextColor,
                  ),
                  label: const Text(
                    "Sign in with email",
                    style: TextStyle(
                      color: AppConstant.appTextColor,
                    ),
                  ),
                  onPressed: () {
                    Get.to(()=> const SigninScreen());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:doctor_ui/app/modules/home/views/home_view.dart';
import 'package:doctor_ui/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
TextEditingController username=TextEditingController();
TextEditingController passwordController=TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
void signup() {
  FirebaseAuth.instance.signInWithEmailAndPassword(
    email: username.text,
    password: passwordController.text,
  ).then((UserCredential userCredential) {
    print("Login Successfully");
    // Check if userCredential has user
    if (userCredential.user != null) {
      // If user exists, check for token
      userCredential.user!.getIdToken().then((String? token) {
        if (token != null && token.isNotEmpty) {
          // Token exists, navigate to home page
          Get.off(HomeView(),arguments: token); // Replace HomeView with your home page view
        } else {
          // Token doesn't exist, navigate to login page
          Get.to(LoginView());
        }
      });
    } else {
      // User doesn't exist, navigate to login page
      Get.to(LoginView());
    }
  }).catchError((error) {
    print("Error: $error");
  });
}

}

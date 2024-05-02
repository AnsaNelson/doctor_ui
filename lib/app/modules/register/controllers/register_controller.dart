import 'package:doctor_ui/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
 TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  
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
void signin() {
  FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailcontroller.text,
    password: passwordcontroller.text,
  ).then((value) {
    print("Created new Account");
    Get.off(LoginView()); // Navigate to LoginView after successful registration
  }).catchError((error) {
    print("Error: $error");
  });
}

  
}

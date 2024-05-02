import 'package:doctor_ui/app/modules/home/views/home_view.dart';
import 'package:doctor_ui/app/modules/register/views/register_view.dart';
import 'package:doctor_ui/app/widgets/botton.dart';
import 'package:doctor_ui/app/widgets/password_text.dart';
import 'package:doctor_ui/app/widgets/textfields.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "asset/image/background_image.jpg", // Add your image asset path here
              fit: BoxFit.cover,
            ),
          ),
            Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.1), // Adjust opacity as needed
            ),
          ),
          // Login form
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: GoogleFonts.abel(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color:Colors.black, // Change text color to contrast with the background
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFields(
                      text: "username",
                      textEditingController: controller.username,
                      top: 20,
                      bottom: 0, left: 20,
                      right: 20,
                    ),
                    PasswordEditText(text: "Password", textEditingController: controller.passwordController,),
                    Button(text: "Login", onClick: controller.signup,),
                    TextButton(onPressed: ()=>Get.to(RegisterView()), child: Text("Register Here"))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

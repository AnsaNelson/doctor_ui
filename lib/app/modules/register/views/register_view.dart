import 'package:doctor_ui/app/modules/login/views/login_view.dart';
import 'package:doctor_ui/app/widgets/botton.dart';
import 'package:doctor_ui/app/widgets/password_text.dart';
import 'package:doctor_ui/app/widgets/textfields.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>RegisterController());
    
    return Scaffold(
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Register',
                style: GoogleFonts.sumana(textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ),
              TextFields(top: 70, left: 20, right: 20, bottom: 0, text: "Name", textEditingController: controller.namecontroller),
              SizedBox(height: 15,),
              TextFields(top: 0, left: 20, right: 20, bottom: 0, text: "Email", textEditingController: controller.emailcontroller),
              SizedBox(height: 2,),
              PasswordEditText(text: "Password", textEditingController: controller.passwordcontroller),
              SizedBox(height: 10,),
              Button(text: "REGISTER", onClick: controller.signin)
            ],
          ),
        ),
      ),
    );
  }
}

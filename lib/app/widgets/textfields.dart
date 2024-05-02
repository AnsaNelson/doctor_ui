import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {
  double width;
  double height;
  double top, left, right, bottom;
  String text;
  final IconData? icon;
  final TextEditingController? textEditingController;
  final bool obscureText; // Add this property

  TextFields({
    Key? key,
    this.width = 20,
    this.height = 90,
    required this.top,
    required this.left,
    required this.right,
    required this.bottom,
    required this.text,
    required this.textEditingController,
    this.obscureText = false,
    this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom, top: top, left: left, right: right),
      child: TextField(
        controller: textEditingController,
        obscureText: obscureText, // Set obscureText property
        decoration: InputDecoration(
          labelText: text,
          labelStyle: GoogleFonts.abhayaLibre(
            textStyle: Theme.of(context).textTheme.subtitle1, // Change to appropriate text style
            fontSize: 25,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: icon != null?Icon(icon):null
          
        ),
        
      ),
    );
  }
}

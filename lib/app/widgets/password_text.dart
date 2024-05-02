import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordEditText extends StatefulWidget {
  final double top, left, right, bottom;
  final String text;

  final TextEditingController textEditingController;
  final void Function(String)? onChange;

  const PasswordEditText({
    Key? key,
    this.top = 30.0,
    this.left = 22.0,
    this.right = 22.0,
    this.bottom = 0.0,
    required this.text,
    required this.textEditingController,
    this.onChange,
  }) : super(key: key);

  @override
  _PasswordEditTextState createState() => _PasswordEditTextState();
}

class _PasswordEditTextState extends State<PasswordEditText> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.top, left: widget.left, right: widget.right),
      child: TextFormField(
        controller: widget.textEditingController,
        obscureText: showPassword,
        onChanged: widget.onChange,
        decoration: InputDecoration(
          labelStyle: GoogleFonts.abhayaLibre(
            textStyle: Theme.of(context).textTheme.subtitle1, // Change to appropriate text style
            fontSize: 25,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
          ),
          labelText: widget.text,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            child: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ),
    );
  }
}



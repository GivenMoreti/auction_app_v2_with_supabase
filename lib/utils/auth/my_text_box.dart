import 'package:flutter/material.dart';
import 'package:ride_sharing_fe/core/Theme/app_pallet.dart';

class MyTextBox extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  MyTextBox(
      {super.key,
      required this.controller,
      this.obscureText = false,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppPallet.orangeColor),
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppPallet.orangeColor,
        hintText: hintText,
        focusColor: AppPallet.orangeColor,
        hoverColor: AppPallet.orangeColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: AppPallet.orangeColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

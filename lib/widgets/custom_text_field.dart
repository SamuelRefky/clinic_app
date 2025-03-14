import 'package:clinic_app/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String text;
  final double width;
  final double font;
  Function(String)? onChanged;
  TextInputType? inputType;
  Icon? icon;
  CustomTextField({
    super.key,
    this.onChanged,
    this.inputType,
    this.icon,
    required this.text,
    required this.width,
    required this.font,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: width,
        child: TextField(
          keyboardType: inputType,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: kPColor),
            ),
          ),
        ),
      ),
    );
  }
}

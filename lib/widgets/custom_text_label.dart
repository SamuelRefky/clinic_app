import 'package:clinic_app/const.dart';
import 'package:flutter/material.dart';

class CustomTextLabel extends StatelessWidget {
  const CustomTextLabel({super.key, required this.text, required this.width});
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: kSColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomBottom extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color fontColor;
  final double width;
  final double height;
  final double font;
  VoidCallback? ontap;
  CustomBottom({
    super.key,
    this.ontap,
    required this.text,
    required this.backGroundColor,
    required this.font,
    required this.width,
    required this.height,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: width,
          height: height,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                color: fontColor,
                fontSize: font,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

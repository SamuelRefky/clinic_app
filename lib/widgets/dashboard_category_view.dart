import 'package:clinic_app/const.dart';
import 'package:flutter/material.dart';

class DashboardCategoryView extends StatelessWidget {
  const DashboardCategoryView({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        width: 100, // Set equal width and height for a perfect circle
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Make the container circular
          color: kPColor, // Set the background color
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1), // Add a shadow
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                text,
                style: TextStyle(
                  color: kSColor,
                  fontSize: bodyText,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

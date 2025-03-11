import 'package:clinic_app/const.dart';
import 'package:flutter/material.dart';

class DashboardCategoryView extends StatelessWidget {
  const DashboardCategoryView({
    super.key,
    required this.text,
    required this.icon,
    required this.shadowDigree,
  });
  final String text;
  final Icon icon;
  final double shadowDigree;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: shadowDigree),
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

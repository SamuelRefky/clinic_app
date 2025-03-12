import 'package:clinic_app/const.dart';
import 'package:clinic_app/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class PatientSchedulCard extends StatelessWidget {
  const PatientSchedulCard({super.key, required this.name, required this.date});
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kSColor, // Set the background color
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1), // Add a shadow
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: bodyText, fontFamily: 'Roboto'),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: bodyText, fontFamily: 'Roboto'),
                ),
              ],
            ),
            Spacer(flex: 1),
            CustomBottom(
              text: 'view Details',
              backGroundColor: kSColor,
              font: bodyText,
              width: 115,
              height: 30,
              fontColor: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}

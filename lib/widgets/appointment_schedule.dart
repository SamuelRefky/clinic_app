import 'package:clinic_app/const.dart';
import 'package:clinic_app/widgets/custom_botton.dart';
import 'package:clinic_app/widgets/patient_schedul_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentSchedule extends StatelessWidget {
  const AppointmentSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appointment Schedule',
              style: GoogleFonts.roboto(
                fontSize: headingText,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('today', style: GoogleFonts.roboto(fontSize: bodyText)),
                Spacer(flex: 1),
                CustomBottom(
                  text: 'view calendar',
                  backGroundColor: kSColor,
                  font: bodyText,
                  width: 120,
                  height: 30,
                  fontColor: kTextColor,
                ),
              ],
            ),
            PatientSchedulCard(name: 'samuel', date: '10 am'),
            PatientSchedulCard(name: 'david', date: '12 pm'),
            PatientSchedulCard(name: 'jone', date: '2 pm'),
            PatientSchedulCard(name: 'ahmed', date: '5 pm'),
            PatientSchedulCard(name: 'mostafa', date: '6 pm'),
            PatientSchedulCard(name: 'mena', date: '7 pm'),
          ],
        ),
      ),
    );
  }
}

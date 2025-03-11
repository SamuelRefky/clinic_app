import 'package:clinic_app/const.dart';
import 'package:clinic_app/widgets/circler_image.dart';
import 'package:clinic_app/widgets/custom_botton.dart';
import 'package:clinic_app/widgets/profile_clinic_details.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});
  static String id = 'doctor profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSColor,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            CustomBottom(
              text: 'edit',
              backGroundColor: kPColor,
              font: subheadingsText,
              width: 100,
              height: 50,
              fontColor: kSColor,
              redious: 32,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          CirclerImage(),
          SizedBox(height: 24),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF6EEFA),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.5), // Add a shadow
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ProfileClinicDetails()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset('assets/clinic.jpg', fit: BoxFit.cover),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: 0.5,
                        ), // Add a shadow
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
          Positioned(
            right: MediaQuery.of(context).size.width / 4,
            top: 50,
            child: CirclerImage(),
          ),
        ],
      ),
    );
  }
}

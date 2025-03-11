import 'package:clinic_app/widgets/custom_text_label.dart';
import 'package:flutter/material.dart';

class ProfileClinicDetails extends StatelessWidget {
  const ProfileClinicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doctor name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            'Clinic name',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextLabel(text: 'address', width: 200),
                  SizedBox(height: 16),
                  Text(
                    'start work at',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  CustomTextLabel(text: '10 AM', width: 200),
                  SizedBox(height: 16),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  CustomTextLabel(text: 'samuelrefky@gmail.com', width: 200),
                  SizedBox(height: 16),
                  Text(
                    'Phone',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  CustomTextLabel(text: '01289737194', width: 200),
                ],
              ),
              SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextLabel(text: 'city', width: 160),
                  SizedBox(height: 16),
                  Text(
                    'end work at',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  ),
                  CustomTextLabel(text: '10 PM', width: 160),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

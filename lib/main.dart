import 'package:clinic_app/views/booking_page.dart';
import 'package:clinic_app/views/dashboard.dart';
import 'package:clinic_app/views/doctor_profile.dart';
import 'package:clinic_app/views/login_view.dart';
import 'package:clinic_app/views/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClinicApp());
}

class ClinicApp extends StatelessWidget {
  const ClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => LoginView(),
        Dashboard.id: (context) => Dashboard(),
        DoctorProfile.id: (context) => DoctorProfile(),
        BookingPage.id: (context) => BookingPage(),
        RegisterView.id: (context) => RegisterView(),
      },
      initialRoute: LoginView.id,
    );
  }
}

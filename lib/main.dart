import 'package:clinic_app/views/dashboard.dart';
import 'package:clinic_app/views/login_view.dart';
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
      },
      initialRoute: LoginView.id,
    );
  }
}

import 'package:clinic_app/const.dart';
import 'package:clinic_app/views/doctor_profile.dart';
import 'package:clinic_app/widgets/appointment_schedule.dart';
import 'package:clinic_app/widgets/dash_category_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  static String id = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final String doctorName = 'doctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSColor,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          'Hello Dr.$doctorName',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, DoctorProfile.id);
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [DashCategoryList(), AppointmentSchedule()]),
      ),
    );
  }
}

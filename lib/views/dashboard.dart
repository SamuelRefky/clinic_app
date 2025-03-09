import 'package:clinic_app/const.dart';
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
        elevation: 10,
        shadowColor: Colors.black,
        leading: null,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'Hello Dr.$doctorName',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kSColor.withValues(alpha: 0.4), // Shadow color
                blurRadius: 10, // Blur radius
                spreadRadius: 2, // Spread radius
                offset: Offset(0, 3), // Shadow offset
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [DashCategoryList(), AppointmentSchedule()]),
      ),
    );
  }
}

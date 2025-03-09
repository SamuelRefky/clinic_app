import 'package:clinic_app/const.dart';
import 'package:clinic_app/widgets/dashboard_category_view.dart';
import 'package:flutter/material.dart';

class DashCategoryList extends StatelessWidget {
  const DashCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DashboardCategoryView(
          text: 'schodule',
          icon: Icon(Icons.calendar_month, color: kSColor, size: 24),
        ),
        DashboardCategoryView(
          text: 'Pationts',
          icon: Icon(Icons.group, color: kSColor, size: 24),
        ),
        DashboardCategoryView(
          text: 'Notifications',
          icon: Icon(Icons.notification_add, color: kSColor, size: 24),
        ),
      ],
    );
  }
}

import 'package:clinic_app/const.dart';
import 'package:clinic_app/views/dashboard.dart';
import 'package:clinic_app/widgets/custom_botton.dart';
import 'package:clinic_app/widgets/custom_divider.dart';
import 'package:clinic_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'login';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kSColor,
      appBar: AppBar(
        backgroundColor: kSColor,
        title: Center(
          child: Text(
            'ClinicApp',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(flex: 1),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  text: 'Login',
                  backGroundColor: kSColor,
                  font: subheadingsText,
                  width: 100,
                  height: 40,
                  fontColor: Colors.black,
                ),

                SizedBox(width: 80),

                CustomBottom(
                  text: 'Sign Up',
                  backGroundColor: kSColor,
                  font: subheadingsText,
                  width: 100,
                  height: 40,
                  fontColor: Colors.black,
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.email, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Email',
                  width: screenWidth - 70,
                  font: headingText,
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.lock_open, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Passsword',
                  width: screenWidth - 70,
                  font: headingText,
                ),
              ],
            ),

            CustomBottom(
              text: 'Forgot Password?',
              backGroundColor: kSColor,
              font: bodyText,
              width: double.infinity,
              height: 30,
              fontColor: kTextColor,
            ),

            CustomBottom(
              text: 'Login',
              backGroundColor: kPColor,
              font: subheadingsText,
              width: double.infinity,
              height: 50,
              fontColor: kSColor,
              ontap: () {
                Navigator.pushNamed(context, Dashboard.id);
              },
            ),

            CustomDivider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  text: 'Google',
                  backGroundColor: kPColor,
                  font: subheadingsText,
                  width: (screenWidth / 2) - 30,
                  height: 50,
                  fontColor: kSColor,
                ),

                SizedBox(width: 20),

                CustomBottom(
                  text: 'Facebook',
                  backGroundColor: kPColor,
                  font: subheadingsText,
                  width: (screenWidth / 2) - 30,
                  height: 50,
                  fontColor: kSColor,
                ),
              ],
            ),

            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

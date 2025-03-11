import 'package:clinic_app/const.dart';
import 'package:clinic_app/widgets/custom_botton.dart';
import 'package:clinic_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});
  static String id = 'book appointment';

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
          'Book Appointment',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/clinic.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HCM Healthcare clinic',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.map)),
              ],
            ),
            Text(
              '256 nguyen van Linh, Tan Thanh, Quan7 ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Text(
              'Choose date',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CustomTextField(
              text: '04/3/2020',
              width: double.infinity,
              font: 16,
              icon: Icon(Icons.calendar_month),
            ),

            SizedBox(height: 16),
            Text(
              'Choose time',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CustomTextField(
              text: '10 AM',
              width: double.infinity,
              font: 16,
              icon: Icon(Icons.timeline),
            ),
            SizedBox(height: 16),
            Text(
              'patient name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CustomTextField(
              text: 'enter your name',
              width: double.infinity,
              font: 16,
            ),
            Spacer(flex: 1),
            CustomBottom(
              text: 'Confirm Appointment',
              backGroundColor: Colors.blue,
              font: subheadingsText,
              width: double.infinity,
              height: 60,
              fontColor: kSColor,
              ontap: () {
                Navigator.pushNamed(context, BookingPage.id);
              },
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_month_rounded),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

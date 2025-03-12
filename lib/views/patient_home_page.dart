import 'package:clinic_app/const.dart';
import 'package:clinic_app/models/clinic_article.dart';
import 'package:clinic_app/views/booking_page.dart';
import 'package:clinic_app/widgets/articles_view.dart';
import 'package:clinic_app/widgets/no_animation_page_route.dart';
import 'package:clinic_app/widgets/welcom_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PatientHomePage extends StatefulWidget {
  const PatientHomePage({super.key});
  static String id = 'book appointment';

  @override
  State<PatientHomePage> createState() => _PatientHomePageState();
}

class _PatientHomePageState extends State<PatientHomePage> {
  final List<ClinicArticleModel> article = const [
    ClinicArticleModel(
      title: "5 Tips for a Healthy Heart",
      description:
          "Learn how to keep your heart healthy with these simple tips.",
      image:
          "https://www.shutterstock.com/shutterstock/photos/2474393153/display_1500/stock-photo-medical-worker-with-a-plus-icon-represents-the-healthcare-and-medical-industry-symbolizing-health-2474393153.jpg",
      content:
          "Maintaining a healthy heart is crucial for overall well-being...",
    ),
    ClinicArticleModel(
      title: "The Importance of Regular Checkups",
      description: "Why you should never skip your annual health checkup.",
      image:
          "https://www.shutterstock.com/shutterstock/photos/2473867263/display_1500/stock-photo-professional-doctor-working-with-patient-in-hospital-2473867263.jpg",
      content: "Regular health checkups can help detect issues early...",
    ),
    ClinicArticleModel(
      title: "Managing Stress for Better Health",
      description:
          "Discover effective ways to manage stress and improve your health.",
      image:
          "https://www.shutterstock.com/shutterstock/photos/2486703237/display_1500/stock-photo-asian-man-doctor-and-anxiety-in-burnout-grief-or-mistake-against-glass-window-in-hospital-2486703237.jpg",
      content:
          "Stress can have a significant impact on your physical and mental health...",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kSColor,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: screenHeight / 3.5,
                    child: WelcomeImage(screenWidth: screenWidth),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 8)),
                Articleview(articles: article),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: kPColor,
                  iconSize: 36,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      NoAnimationPageRoute(page: BookingPage()),
                    );
                  },
                  icon: Icon(Icons.calendar_month_rounded),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

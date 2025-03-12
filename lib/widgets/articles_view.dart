import 'package:clinic_app/models/clinic_article.dart';
import 'package:clinic_app/widgets/article.dart';
import 'package:flutter/material.dart';

class Articleview extends StatelessWidget {
  final List<ClinicArticleModel> articles;
  const Articleview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Article(clinicArticle: articles[index]),
        );
      }, childCount: articles.length),
    );
  }
}

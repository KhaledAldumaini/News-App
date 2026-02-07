import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(imagePath: 'assets/302152344_483513853785416_8620023333064653522_n.jpg',title: 'High School'),
    CategoryModel(imagePath: 'assets/_fullstackalz.png',title: 'IT'),
    CategoryModel(imagePath: 'assets/insta.jpg',title: 'Social Media'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
              category: categories[index],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_cloud_app/widgets/categories_list_view.dart';
import 'package:news_cloud_app/widgets/category_card.dart';
import 'package:news_cloud_app/widgets/news_tile.dart';
import 'package:news_cloud_app/widgets/news_tiles_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News'),
            Text('Cloud', style: TextStyle(color: Colors.orangeAccent)),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      //cards
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CategoriesListView(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: NewsTilesListView()),
          ],
        ),
      )
    );
  }
}

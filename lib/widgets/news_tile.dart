import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/news_tile_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsTile});
  final NewsTileModel newsTile;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 22,),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            newsTile.imagePath,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Text(
          newsTile.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),

        Text(
          newsTile.subTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}

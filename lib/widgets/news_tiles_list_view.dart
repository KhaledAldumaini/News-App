import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/news_tile_model.dart';
import 'package:news_cloud_app/widgets/news_tile.dart';

class NewsTilesListView extends StatelessWidget {
  const NewsTilesListView({super.key});
  final List<NewsTileModel> newsTiles = const [
    NewsTileModel(
      imagePath: 'https://picsum.photos/250?image=9',
      title:
          '''11h ago. Zelenskyy says U.S. gave Ukraine and Russia a June deadline to reach agreement to end war · 10h ago.
          '11h ago. Zelenskyy says U.S. gave Ukraine and Russia a June deadline to reach''',
      subTitle:
          '''11h ago. Zelenskyy says U.S. gave Ukraine and Russia a June deadline to reach agreement to end war · 10h ago.
          '11h ago. Zelenskyy says U.S. gave Ukraine and Russia a June deadline to reach''',
    ),
    NewsTileModel(
      imagePath: 'https://picsum.photos/id/20/3670/2462',
      title:
          '''Computers have fundamentally reshaped the landscape of modern education,
         evolving from optional luxuries into indispensable academic tools.''',
      subTitle:
          '''Furthermore, the rise of collaborative platforms enables students to engage in peer-to-peer learning and remote projects,
         breaking down geographical barriers.''',
    ),
    NewsTileModel(
      imagePath: 'https://picsum.photos/id/42/3456/2304',
      title:
          'Finding time to relax is not just a luxury; it is a biological necessity for maintaining mental and physical health.',
      subTitle:
          'In our fast-paced world, relaxation acts as a "reset" button for the nervous system, lowering cortisol levels and reducing the physical toll of stress. Whether it involves mindfulness, a hobby, or simply stepping away from screens, true relaxation allows the brain to process information and recover from cognitive fatigue.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: newsTiles.length,
      itemBuilder: (context, index) {
        return NewsTile(newsTile: newsTiles[index]);
      },
    );
  }
}


import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Text('News'),
          Text('Cloud', style: TextStyle(color: Colors.yellow),)
        ],),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                //cards
              ],
            ),
            Column(
              children: [
                //image with title and subtitle
              ],
            )
          ],
        ),
      ),
    );
  }
}

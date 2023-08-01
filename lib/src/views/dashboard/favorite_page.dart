import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jisho/src/widgets/elevated_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(crossAxisCount: 2, children: const [
      ElevatedCard(),
      ElevatedCard(),
      ElevatedCard(),
      ElevatedCard(),
    ],);
  }
}

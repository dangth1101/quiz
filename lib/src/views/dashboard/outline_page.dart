
import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';
import 'package:jisho/src/views/dashboard/collection_page.dart';
import 'package:jisho/src/views/dashboard/favorite_page.dart';
import 'package:jisho/src/views/dashboard/home_page.dart';

class OutlinePage extends StatefulWidget {
  const OutlinePage({super.key});

  @override
  State<OutlinePage> createState() => _OutlinePageState();
}

class _OutlinePageState extends State<OutlinePage> {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        leading: const Center(
            child: CircleAvatar(backgroundColor: MyColors.primaryColor)),
        title: const TextField(
          decoration: InputDecoration(
            fillColor: MyColors.primaryColor,
            filled: true,
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code,
              color: MyColors.buttonColor,
            ),
          ),
        ],
      ),
      body: FavoritePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        selectedItemColor: MyColors.buttonColor,
      ),
    );
  }
}

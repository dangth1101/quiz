
import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';
import 'package:jisho/src/views/collection_page.dart';
import 'package:jisho/src/views/favorite_page.dart';
import 'package:jisho/src/views/home_page.dart';

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
            child: CircleAvatar(backgroundColor: MyColors.backgroundColor)),
        title: const TextField(
          decoration: InputDecoration(
            fillColor: MyColors.backgroundColor,
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
      body: HomePage(),
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

import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Center(
              child: CircleAvatar(backgroundColor: MyColors.backgroundColor)),
          title: TextField(
            decoration: InputDecoration(
              fillColor: MyColors.backgroundColor,
              filled: true,
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text("Recommend", style: Theme.of(context).textTheme.titleLarge,),
        ],),
      ),
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

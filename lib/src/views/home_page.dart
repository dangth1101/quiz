import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';
import 'package:jisho/src/widgets/bar_graph.dart';
import 'package:jisho/src/widgets/elevated_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> weeklySummary = [
    25,
    3,
    4,
    10,
    20,
    5,
    7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
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
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code,
              color: MyColors.buttonColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 160.0, // Provide a specific height
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: MyColors.backgroundColor,
                      margin: EdgeInsets.all(8.0),
                      child: Center(child: Text('Item $index')),
                    );
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 5,
                position: 1,
                decorator: DotsDecorator(
                  size: Size.square(8.0),
                  activeSize: Size(16.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: MyColors.backgroundColor,
                  activeColor: MyColors.buttonColor,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommend",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ElevatedCard();
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Track Progress",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Column(
                children: [
                  Container(
                    color: MyColors.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            color: MyColors.buttonColor,
                          ),
                          VerticalDivider(),
                          Text("Time/Day"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    color: MyColors.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MyBarGraph(
                        weeklySummary: weeklySummary,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
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

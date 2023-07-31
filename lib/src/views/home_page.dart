import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
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
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 160.0, // Provide a specific height
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: MyColors.backgroundColor,
                      margin: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Item $index')),
                    );
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 5,
                position: 1,
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size(16.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: MyColors.backgroundColor,
                  activeColor: MyColors.buttonColor,
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommend",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const ElevatedCard();
                  },
                  itemCount: 10,
                ),
              ),
              const SizedBox(height: 10),
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
                          const VerticalDivider(),
                          const Text("Time/Day"),
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
      );
  }
}
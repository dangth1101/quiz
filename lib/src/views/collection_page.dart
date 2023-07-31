import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            "Vocabulary",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              Text(
                                "0",
                                style: TextStyle(color: Colors.green),
                              ),
                              Text(
                                "0",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Expanded(flex: 1, child: Container()),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  "Verb",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.blueAccent),
                                    ),
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: 2,
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 1,),
              ],
            );
          },
          itemCount: 20,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: MyColors.fontColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

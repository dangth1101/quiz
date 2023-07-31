import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';

class ElevatedCard extends StatefulWidget {
  const ElevatedCard({super.key});

  @override
  State<ElevatedCard> createState() => _ElevatedCardState();
}

class _ElevatedCardState extends State<ElevatedCard> {
  bool _style = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.backgroundColor,
      child: InkWell(
        onTap: () {
          _style = !_style;
          print("changed");
          setState(() {});
        },
        child: SizedBox(
          width: 160,
          child: _style
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 20.0,
                      ),
                      child: Text(
                        "Title",
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Divider(
                      indent: 16,
                      endIndent: 16,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "This is a sample decription\n\n\n",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    Divider(
                      indent: 16,
                      endIndent: 16,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "#HashTag",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.cancel,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 40.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.white,
                            ),
                            VerticalDivider(),
                            Text(
                              "START",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 40.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.bookmark_add,
                              color: Colors.white,
                            ),
                            VerticalDivider(),
                            Text(
                              "SAVE ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.forum,
                              color: Colors.white,
                            ),
                            VerticalDivider(),
                            Text(
                              "COMMENT",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

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
          setState(() {});
        },
        child: SizedBox(
          width: 160,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 10.0,
                ),
                child: Text(
                  "Title",
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Divider(
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
              const Divider(
                indent: 16,
                endIndent: 16,
                thickness: 1,
              ),
              _style
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "#HashTag",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  : Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

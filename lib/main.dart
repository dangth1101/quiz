import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';
import 'package:jisho/src/views/outline_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.buttonColor),
        useMaterial3: true,
      ),
      home: const OutlinePage(),
    );
  }
}

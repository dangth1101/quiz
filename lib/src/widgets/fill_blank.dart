import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';

class FillBlank extends StatelessWidget {
  const FillBlank({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.titleLarge,
      decoration: InputDecoration(
        hintText: "Fill in answer",
        labelText: "Answer",
        labelStyle: Theme.of(context).textTheme.titleLarge,
        suffixIcon: const Icon(
          Icons.mic,
          color: MyColors.fontColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: MyColors.buttonColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: MyColors.buttonColor,
            width: 2.0,
          ),
        ),
        fillColor: Colors.blue[50],
        filled: true,
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}

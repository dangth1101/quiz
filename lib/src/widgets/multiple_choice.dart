import 'package:flutter/material.dart';

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

enum answers { A, B, C, D }

class _MultipleChoiceState extends State<MultipleChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 4),
          child: Row(
            children: [
              Radio(value: answers.A, groupValue: answers, onChanged: (_) {}),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Answer A",
                      contentPadding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 10, right: 4)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              Radio(value: answers.B, groupValue: answers, onChanged: (_) {}),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Answer B",
                      contentPadding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 10, right: 4)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              Radio(value: answers.C, groupValue: answers, onChanged: (_) {}),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Answer C",
                      contentPadding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 10, right: 4)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              Radio(value: answers.D, groupValue: answers, onChanged: (_) {}),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Answer D",
                      contentPadding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 10, right: 4)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

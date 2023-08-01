import 'package:flutter/material.dart';
import 'package:jisho/src/utils/my_colors.dart';
import 'package:jisho/src/widgets/multiple_choice.dart';

class QuizAddPage extends StatelessWidget {
  const QuizAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add a Quiz",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            iconSize: 36,
            icon: const Icon(
              Icons.done,
              color: MyColors.buttonColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              style: Theme.of(context).textTheme.titleLarge,
              decoration: InputDecoration(
                hintText: "Enter your question",
                labelText: "Question",
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
            ),
            const SizedBox(height: 10,),
            const MultipleChoice(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: TextButton(
                  child: Text(
                    "Add question",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

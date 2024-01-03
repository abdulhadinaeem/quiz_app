import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/constants/route_names.dart';
import 'package:quiz_app/services/question_provider.dart';
import 'package:timer_count_down/timer_count_down.dart';

class QuestionFourScreen extends StatelessWidget {
  const QuestionFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuestionProvider>(context);
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: context.height * 0.14,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  provider.questionModelList[3].question,
                  style: context.textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  for (int i = 0;
                      i < provider.questionModelList[3].optionsList.length;
                      i++)
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                          provider.questionModelList[3].optionsList[i].options),
                    ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Countdown(
                seconds: 10,
                onFinished: () {
                  Navigator.pushNamed(context, RouteNames.questionFiveScreen);
                },
                build: (BuildContext context, double time) {
                  return Text(
                    time.toString(),
                    style: context.textTheme.displayLarge,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

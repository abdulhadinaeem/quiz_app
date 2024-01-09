import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/constants/route_names.dart';
import 'package:quiz_app/core/constants/text.dart';
import 'package:quiz_app/services/question_provider.dart';
import 'package:quiz_app/widget/custom_appbar.dart';
import 'package:quiz_app/widget/custom_count_down.dart';

class QuestionOneScreen extends StatefulWidget {
  const QuestionOneScreen({super.key});

  @override
  State<QuestionOneScreen> createState() => _QuestionOneScreenState();
}

class _QuestionOneScreenState extends State<QuestionOneScreen> {
  int selectedIndex = -1;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuestionProvider>(context);

    return Scaffold(
      appBar: CustomAppBar(
        provider: provider,
        index: 0,
      ),
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  provider.questionModelList[0].question,
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
                      i < provider.questionModelList[0].optionsList.length;
                      i++)
                    GestureDetector(
                      //onTap..........................
                      onTap: () {
                        if (!isSelected) {
                          setState(() {
                            isSelected = true;
                            selectedIndex = i;
                            selectedIndex == i
                                ? provider.questionModelList[0].optionsList[i]
                                        .isCorrect
                                    ? provider.totalRightQuestion++
                                    : null
                                : null;
                          });
                        }
                      },

                      child: Container(
                        margin: const EdgeInsets.all(12),
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: selectedIndex == i
                                ? provider.questionModelList[0].optionsList[i]
                                        .isCorrect
                                    ? Colors.green
                                    : Colors.red
                                : Colors.black,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              provider
                                  .questionModelList[0].optionsList[i].options,
                            ),
                            selectedIndex == i
                                ? provider.questionModelList[0].optionsList[i]
                                        .isCorrect
                                    ? const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.clear_rounded,
                                        color: Colors.red,
                                      )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            isSelected
                ? MaterialButton(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteNames.questionTwoScreen,
                      );
                      isSelected = false;
                      selectedIndex = -1;
                    },
                    child: Text(
                      AppText.next,
                      style: context.textTheme.displaySmall,
                    ),
                  )
                : CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: CustomCountDown(
                      isSelected: isSelected,
                      routeName: RouteNames.questionTwoScreen,
                      onFinished: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RouteNames.questionTwoScreen,
                        );
                        isSelected = false;
                        selectedIndex = -1;
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

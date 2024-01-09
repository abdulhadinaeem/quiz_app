import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/constants/assets.dart';
import 'package:quiz_app/core/constants/route_names.dart';
import 'package:quiz_app/core/constants/text.dart';
import 'package:quiz_app/services/question_provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuestionProvider>(context);

    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset(
            AppImages.resultImage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.amber,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.yourCorrectAns,
                        style: context.textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        provider.totalRightQuestion.toString(),
                        style: context.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.amber,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.totalScore,
                        style: context.textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${provider.totalRightQuestion * 10}',
                        style: context.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            AppText.youDidAgreatJob,
            style: context.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteNames.welcomeScreen, (route) => false);
              provider.totalRightQuestion = 0;
              provider.totalPoints = 0;

              // Get.offAllNamed(RouteNames.welcomeScreen);
            },
            color: Colors.purple,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: const Text(
              AppText.backToHome,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

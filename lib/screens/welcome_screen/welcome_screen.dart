import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constants/assets.dart';
import 'package:quiz_app/core/constants/text.dart';
import 'package:quiz_app/core/constants/route_names.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppImages.logo),
            Text(
              AppText.welcome,
              style: context.textTheme.displayLarge,
            ),
            MaterialButton(
              color: Colors.purple,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.questionOneScreen,
                );
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Center(
                child: Text(
                  AppText.letsStart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/services/question_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.provider, required this.index});
  final int index;
  final QuestionProvider provider;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: provider.questionModelList[index].questionId.toString(),
                style: context.textTheme.displayLarge),
            TextSpan(text: '/5', style: context.textTheme.displayMedium)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

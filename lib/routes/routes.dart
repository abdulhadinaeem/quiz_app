import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quiz_app/core/constants/route_names.dart';
import 'package:quiz_app/screens/question_screen/question_five_screen.dart';
import 'package:quiz_app/screens/question_screen/question_four_screen.dart';
import 'package:quiz_app/screens/question_screen/question_one_screen.dart';
import 'package:quiz_app/screens/question_screen/question_three_screen.dart';
import 'package:quiz_app/screens/question_screen/question_two_screen.dart';
import 'package:quiz_app/screens/result_screen/result_screen.dart';
import 'package:quiz_app/screens/welcome_screen/welcome_screen.dart';

// Map<String, Widget Function(BuildContext)> namedroutes =
//     <String, WidgetBuilder>{
//   RouteNames.welcomeScreen: (context) => const WelcomeScreen(),
//   RouteNames.questionOneScreen: (context) => const QuestionOneScreen(),
//   RouteNames.questionTwoScreen: (context) => const QuestionTwoScreen(),
//   RouteNames.questionThreeScreen: (context) => const QuestionThreeScreen(),
//   RouteNames.questionFourScreen: (context) => const QuestionFourScreen(),
//   RouteNames.questionFiveScreen: (context) => const QuestionFiveScreen(),
// };
Duration pageduration = const Duration(milliseconds: 400);

class AppRoutes {
  static Route<dynamic> ongenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.welcomeScreen:
        return MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        );
      case RouteNames.questionOneScreen:
        return PageTransition(
          duration: pageduration,
          child: const QuestionOneScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case RouteNames.questionTwoScreen:
        return PageTransition(
          duration: pageduration,
          child: const QuestionTwoScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case RouteNames.questionThreeScreen:
        return PageTransition(
          duration: pageduration,
          child: const QuestionThreeScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case RouteNames.questionFourScreen:
        return PageTransition(
          duration: pageduration,
          child: const QuestionFourScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case RouteNames.questionFiveScreen:
        return PageTransition(
          duration: pageduration,
          child: const QuestionFiveScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case RouteNames.resultScreen:
        return PageTransition(
          duration: pageduration,
          child: const ResultScreen(),
          type: PageTransitionType.rightToLeft,
        );
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text(''),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionProvider extends ChangeNotifier {
  int totalRightQuestion = 0;
  double totalPoints = 0;

  List<QuextionDataModel> questionModelList = [
    QuextionDataModel(
      questionId: 1,
      question: " What is the capital of France?",
      optionsList: [
        OptionsModel(
          options: "A) Berlin",
          isCorrect: false,
        ),
        OptionsModel(
          options: "B) Paris",
          isCorrect: true,
        ),
        OptionsModel(
          options: "C) Rome",
          isCorrect: false,
        ),
        OptionsModel(
          options: "D) Madrid",
          isCorrect: false,
        ),
      ],
    ),
    QuextionDataModel(
      questionId: 2,
      question: " Which planet is known as the 'Red Planet'?",
      optionsList: [
        OptionsModel(
          options: "A) Venus",
          isCorrect: false,
        ),
        OptionsModel(
          options: "B) Mars",
          isCorrect: true,
        ),
        OptionsModel(
          options: "C) Jupiter",
          isCorrect: false,
        ),
        OptionsModel(
          options: "D) Saturn",
          isCorrect: false,
        ),
      ],
    ),
    QuextionDataModel(
      questionId: 3,
      question: " How many continents are there on Earth?",
      optionsList: [
        OptionsModel(
          options: "A) 5",
          isCorrect: false,
        ),
        OptionsModel(
          options: "B) 6",
          isCorrect: false,
        ),
        OptionsModel(
          options: "C) 7",
          isCorrect: true,
        ),
        OptionsModel(
          options: "D) 8",
          isCorrect: false,
        ),
      ],
    ),
    QuextionDataModel(
      questionId: 4,
      question: " Who wrote the play 'Romeo and Juliet'?",
      optionsList: [
        OptionsModel(
          options: "A) William Shakespeare",
          isCorrect: true,
        ),
        OptionsModel(
          options: "B) Charles Dickens",
          isCorrect: false,
        ),
        OptionsModel(
          options: "C) Jane Austen",
          isCorrect: false,
        ),
        OptionsModel(
          options: "D) F.Scott Fitzgerald",
          isCorrect: false,
        ),
      ],
    ),
    QuextionDataModel(
      questionId: 5,
      question: " What is the chemical symbol for water?",
      optionsList: [
        OptionsModel(
          options: "A) H2O",
          isCorrect: true,
        ),
        OptionsModel(
          options: "B) CO2",
          isCorrect: false,
        ),
        OptionsModel(
          options: "C) NACL",
          isCorrect: false,
        ),
        OptionsModel(
          options: "D) O2",
          isCorrect: false,
        ),
      ],
    ),
  ];

  onFinish(BuildContext context, int index, String routeName) {
    Navigator.pushReplacementNamed(
      context,
      routeName,
    );
  }
}

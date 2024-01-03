import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionProvider extends ChangeNotifier {
  PageController pageController = PageController();

  String text = '';

  onTapped(int index) {
    questionModelList[index].isSelected = !questionModelList[index].isSelected;
    // questionModelList[index].selectedOption =
    //     questionModelList[index].optionsList[index].index;

    text = questionModelList[index].isSelected
        ? questionModelList[index].optionsList[index].isCorrect
            ? 'Correct'
            : 'Answer is ${questionModelList[index].correctAnswer}'
        : '';
    notifyListeners();
  }

  List<QuextionDataModel> questionModelList = [
    QuextionDataModel(
      questionId: 1,
      question: " What is the capital of France?",
      answerIndex: 2,
      correctAnswer: "B) Paris",
      optionsList: [
        OptionsModel(options: "A) Berlin", isCorrect: false, index: 1),
        OptionsModel(options: "B) Paris", isCorrect: true, index: 2),
        OptionsModel(options: "C) Rome", isCorrect: false, index: 3),
        OptionsModel(options: "D) Madrid", isCorrect: false, index: 4),
      ],
    ),
    QuextionDataModel(
      questionId: 2,
      question: " Which planet is known as the 'Red Planet'?",
      correctAnswer: "B) Mars",
      answerIndex: 2,
      optionsList: [
        OptionsModel(options: "A) Venus", isCorrect: false, index: 1),
        OptionsModel(options: "B) Mars", isCorrect: true, index: 2),
        OptionsModel(options: "C) Jupiter", isCorrect: false, index: 3),
        OptionsModel(options: "D) Saturn", isCorrect: false, index: 4),
      ],
    ),
    QuextionDataModel(
      questionId: 3,
      correctAnswer: "C) 7",
      question: " How many continents are there on Earth?",
      answerIndex: 3,
      optionsList: [
        OptionsModel(options: "A) 5", isCorrect: false, index: 1),
        OptionsModel(options: "B) 6", isCorrect: false, index: 2),
        OptionsModel(options: "C) 7", isCorrect: true, index: 3),
        OptionsModel(options: "D) 8", isCorrect: false, index: 4),
      ],
    ),
    QuextionDataModel(
      questionId: 4,
      correctAnswer: "A) William Shakespeare",
      question: " Who wrote the play 'Romeo and Juliet'?",
      answerIndex: 1,
      optionsList: [
        OptionsModel(
            options: "A) William Shakespeare", isCorrect: true, index: 1),
        OptionsModel(options: "B) Charles Dickens", isCorrect: false, index: 2),
        OptionsModel(options: "C) Jane Austen", isCorrect: false, index: 3),
        OptionsModel(
            options: "D) F.Scott Fitzgerald", isCorrect: false, index: 4),
      ],
    ),
    QuextionDataModel(
      questionId: 5,
      correctAnswer: "A) H2O",
      question: " What is the chemical symbol for water?",
      answerIndex: 1,
      optionsList: [
        OptionsModel(options: "A) H2O", isCorrect: true, index: 1),
        OptionsModel(options: "B) CO2", isCorrect: false, index: 2),
        OptionsModel(options: "C) NACL", isCorrect: false, index: 3),
        OptionsModel(options: "D) O2", isCorrect: false, index: 4),
      ],
    ),
  ];
}

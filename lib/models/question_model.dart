class QuextionDataModel {
  String question;
  int answerIndex;
  bool isSelected;
  int? selectedOption;
  int questionId;
  int? score;
  String correctAnswer;
  List<OptionsModel> optionsList = [];
  QuextionDataModel(
      {required this.question,
      this.score = 0,
      required this.questionId,
      required this.correctAnswer,
      required this.answerIndex,
      required this.optionsList,
      this.isSelected = false,
      this.selectedOption});
}

class OptionsModel {
  String options;
  bool isCorrect;
  int index;
  OptionsModel(
      {required this.options, required this.isCorrect, required this.index});
}

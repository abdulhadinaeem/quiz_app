class QuextionDataModel {
  String question;
  int questionId;
  int score;
  List<OptionsModel> optionsList = [];
  QuextionDataModel({
    required this.question,
    this.score = 0,
    required this.questionId,
    required this.optionsList,
  });
}

class OptionsModel {
  String options;
  bool isCorrect;
  OptionsModel({
    required this.options,
    required this.isCorrect,
  });
}

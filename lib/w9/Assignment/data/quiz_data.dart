import '../model/quiz_model.dart';

final List<QuestionModel> questionData = [
  QuestionModel(
    title: 'Who is the best Teacher ?',
    choice: ['Ronan', 'Hongly', 'SengHort'],
    isGoodChoice: 'Ronan',
  ),
  QuestionModel(
    title: 'Which color is the best ?',
    choice: ['Blue', 'Green', 'White'],
    isGoodChoice: 'Blue',
  ),
];

final List<AnswerModel> answerData = [
  AnswerModel(questionId: questionData[0].id, answerChoice: 'Ronan'),
  AnswerModel(questionId: questionData[0].id, answerChoice: 'Hongly'),
  AnswerModel(questionId: questionData[0].id, answerChoice: 'SengHort'),

  AnswerModel(questionId: questionData[1].id, answerChoice: 'Blue'),
  AnswerModel(questionId: questionData[1].id, answerChoice: 'Green'),
  AnswerModel(questionId: questionData[1].id, answerChoice: 'White'),
];

final QuizModel sampleQuiz = QuizModel(
  questions: questionData,
  answers: answerData,
);

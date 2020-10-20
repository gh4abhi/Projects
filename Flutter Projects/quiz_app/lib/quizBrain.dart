import 'question.dart';

class QuizBrain{
  int _questNum = 0;
  List <Question> _quesBank = [
    Question('ASCII value of A is 65.',  true),
    Question("Runtime Error is not an error.", false),
    Question('%d is used for integers.', true),
  ];
  void nextQuestion() {
    if (_questNum < _quesBank.length - 1)
      {
        _questNum ++;
      }
  }
  String getQuestion()
  {
    return _quesBank[_questNum].questText;
  }

  bool getAns()
  {
    return _quesBank[_questNum].ansValue;
  }

  bool isFinished()
  {
    if(_questNum == _quesBank.length - 1)
      {
        print(true);
        return true;
      }
    else{
      print(false);
      return false;
    }
  }

void reset()
{
  _questNum = 0;
}
}
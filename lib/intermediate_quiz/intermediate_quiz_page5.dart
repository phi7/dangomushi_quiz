
import 'package:flutter/material.dart';
import 'package:quiz_app/question_page_template.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_constants.dart';
import 'intermediate_quiz_answer.dart';

class IntermediateQuizPage5 extends StatelessWidget {
  const IntermediateQuizPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[4][0], lst[4][1], lst[4][2],lst[4][3],lst2[4][0],lst2[4][1],lst2[4][2],IntermediateQuizAnswer());
  }
}

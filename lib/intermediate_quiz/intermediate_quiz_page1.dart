
import 'package:flutter/material.dart';
import 'package:quiz_app/question_page_template.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_constants.dart';
import 'intermediate_quiz_page2.dart';

class IntermediateQuizPage1 extends StatelessWidget {
  const IntermediateQuizPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[0][0], lst[0][1], lst[0][2],lst[0][3],lst2[0][0],lst2[0][1],lst2[0][2],IntermediateQuizPage2());
  }
}

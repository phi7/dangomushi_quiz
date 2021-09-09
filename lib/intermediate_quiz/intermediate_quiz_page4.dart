
import 'package:flutter/material.dart';
import 'package:quiz_app/question_page_template.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_constants.dart';
import 'intermediate_quiz_page5.dart';

class IntermediateQuizPage4 extends StatelessWidget {
  const IntermediateQuizPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[3][0], lst[3][1], lst[3][2],lst[3][3],lst2[3][0],lst2[3][1],lst2[3][2],IntermediateQuizPage5());
  }
}

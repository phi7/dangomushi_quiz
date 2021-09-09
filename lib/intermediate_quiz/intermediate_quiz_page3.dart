
import 'package:flutter/material.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_quiz_page4.dart';
import 'package:quiz_app/question_page_template.dart';

import 'intermediate_constants.dart';

class IntermediateQuizPage3 extends StatelessWidget {
  const IntermediateQuizPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[2][0], lst[2][1], lst[2][2],lst[2][3],lst2[2][0],lst2[2][1],lst2[2][2],IntermediateQuizPage4());
  }
}

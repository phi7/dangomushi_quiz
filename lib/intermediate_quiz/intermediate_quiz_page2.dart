
import 'package:flutter/material.dart';
import 'package:quiz_app/intermediate_quiz/intermediate_quiz_page3.dart';
import 'package:quiz_app/question_page_template.dart';

import 'intermediate_constants.dart';

class IntermediateQuizPage2 extends StatelessWidget {
  const IntermediateQuizPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[1][0],lst[1][1],lst[1][2],lst[1][3],lst2[1][0],lst2[1][1],lst2[1][2],IntermediateQuizPage3());
  }
}

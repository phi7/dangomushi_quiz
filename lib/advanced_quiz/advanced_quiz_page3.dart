
import 'package:flutter/material.dart';

import 'package:quiz_app/question_page_template.dart';

import '../advanced_quiz/advanced_constants.dart';
import 'advanced_quiz_page4.dart';

class AdvancedQuizPage3 extends StatelessWidget {
  const AdvancedQuizPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[2][0], lst[2][1], lst[2][2],lst[2][3],lst2[2][0],lst2[2][1],lst2[2][2],AdvancedQuizPage4());
  }
}

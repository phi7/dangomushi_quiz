
import 'package:flutter/material.dart';
import 'package:quiz_app/question_page_template.dart';
import 'package:quiz_app/advanced_quiz/advanced_constants.dart';
import 'advanced_quiz_page2.dart';

class AdvancedQuizPage1 extends StatelessWidget {
  const AdvancedQuizPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[0][0], lst[0][1], lst[0][2],lst[0][3],lst2[0][0],lst2[0][1],lst2[0][2],AdvancedQuizPage2());
  }
}

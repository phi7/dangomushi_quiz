
import 'package:flutter/material.dart';
import 'package:quiz_app/question_page_template.dart';
import 'package:quiz_app/advanced_quiz/advanced_constants.dart';
import 'advanced_quiz_page5.dart';

class AdvancedQuizPage4 extends StatelessWidget {
  const AdvancedQuizPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[3][0], lst[3][1], lst[3][2],lst[3][3],lst2[3][0],lst2[3][1],lst2[3][2],AdvancedQuizPage5());
  }
}

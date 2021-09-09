
import 'package:flutter/material.dart';
import 'package:quiz_app/advanced_quiz/advanced_quiz_page3.dart';
import 'package:quiz_app/question_page_template.dart';

import '../advanced_quiz/advanced_constants.dart';

class AdvancedQuizPage2 extends StatelessWidget {
  const AdvancedQuizPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionPageTemplate(lst[1][0],lst[1][1],lst[1][2],lst[1][3],lst2[1][0],lst2[1][1],lst2[1][2],AdvancedQuizPage3());
  }
}

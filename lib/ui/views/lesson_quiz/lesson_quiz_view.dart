import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'lesson_quiz_viewmodel.dart';

class LessonQuizView extends StackedView<LessonQuizViewModel> {
  const LessonQuizView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LessonQuizViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  LessonQuizViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LessonQuizViewModel();
}

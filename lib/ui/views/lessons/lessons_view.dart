
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../custom_widget/game_chip.dart';
import '../../custom_widget/lesson_main_card.dart';
import 'lessons_viewmodel.dart';

class LessonsView extends StackedView<LessonsViewModel> {
  const LessonsView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      LessonsViewModel viewModel,
      Widget? child,
      ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GameChip(
                label: 'Strokes',
              ),
              GameChip(label: 'Typing'),
            ],
          ),
          LessonMainCard(label: 'Lesson 1'),
          LessonMainCard(label: 'Lesson 2'),
          LessonMainCard(label: 'Lesson 3'),
        ],
      ),
    );
  }

  @override
  LessonsViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      LessonsViewModel();
}

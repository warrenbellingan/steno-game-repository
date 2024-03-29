import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../custom_widget/achievement_card.dart';
import '../../custom_widget/game_chip.dart';
import 'achievement_viewmodel.dart';

class AchievementView extends StackedView<AchievementViewModel> {
  const AchievementView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AchievementViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameChip(label: 'All'),
              GameChip(label: 'Completed'),
              GameChip(label: 'Incomplete'),
            ],
          ),
          AchievementCard(
            isComplete: true,
            title: "Noob",
            description: "Reach Level 5",
          ),
          AchievementCard(
            isComplete: true,
            title: "Pro",
            description: "Reach Level 20",
          ),
          AchievementCard(
            isComplete: false,
            title: "Expert",
            description: "Reach Level 50",
          ),
        ],
      ),
    );
  }

  @override
  AchievementViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AchievementViewModel();
}

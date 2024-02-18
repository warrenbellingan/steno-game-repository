import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/constants/game_color.dart';
import 'package:Steno_Game/ui/custom_widget/game_body.dart';
import 'package:Steno_Game/ui/custom_widget/play_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../custom_widget/game_bar.dart';
import 'strokes_play_viewmodel.dart';

class StrokesPlayView extends StackedView<StrokesPlayViewModel> {
  const StrokesPlayView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StrokesPlayViewModel viewModel,
    Widget? child,
  ) {
    return GameBody(
      body: Column(
        children: [
          GameBar(),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              PlayCard(label: "Multi Player"),
              PlayCard(label: "Strokes Quiz"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  StrokesPlayViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StrokesPlayViewModel();
}

import 'package:Steno_Game/ui/custom_widget/game_body.dart';
import 'package:Steno_Game/ui/custom_widget/game_button.dart';
import 'package:Steno_Game/ui/custom_widget/in_game_bar.dart';
import 'package:Steno_Game/ui/custom_widget/painter.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../constants/game_color.dart';
import 'strokes_multiplayer_viewmodel.dart';

class StrokesMultiplayerView extends StackedView<StrokesMultiplayerViewModel> {
  const StrokesMultiplayerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StrokesMultiplayerViewModel viewModel,
    Widget? child,
  ) {
    return GameBody(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InGameBar(),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  style: BorderStyle.solid,
                  color: GameColor.secondaryColor,
                ),
              ),
              child: Text(
                "SampleWord",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 24),
            Painter(),
            SizedBox(height: 24),
            GameButton(text: "Submit Stroke", onClick: () {}),
          ],
        ),
      ),
    );
  }

  @override
  StrokesMultiplayerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StrokesMultiplayerViewModel();
}

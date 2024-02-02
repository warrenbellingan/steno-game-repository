import 'package:Steno_Game/ui/constants/game_png.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:Steno_Game/ui/common/ui_helpers.dart';

import '../../custom_widget/game_image.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      StartupViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      backgroundColor: Color(0xFFDCDCDC),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GameImage(
              path: GamePng.gameLogoPath,
              width: 250,
              height: 250,
            ),
            Text(
              'STENO GAME',
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
            verticalSpaceSmall,
            CircularProgressIndicator(
              color: Colors.redAccent,
              strokeWidth: 6,
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}

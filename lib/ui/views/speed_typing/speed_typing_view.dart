import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'speed_typing_viewmodel.dart';

class SpeedTypingView extends StackedView<SpeedTypingViewModel> {
  const SpeedTypingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SpeedTypingViewModel viewModel,
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
  SpeedTypingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpeedTypingViewModel();
}

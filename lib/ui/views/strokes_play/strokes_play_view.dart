import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'strokes_play_viewmodel.dart';

class StrokesPlayView extends StackedView<StrokesPlayViewModel> {
  const StrokesPlayView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StrokesPlayViewModel viewModel,
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
  StrokesPlayViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StrokesPlayViewModel();
}

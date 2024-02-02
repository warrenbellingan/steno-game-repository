import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'typing_sound_viewmodel.dart';

class TypingSoundView extends StackedView<TypingSoundViewModel> {
  const TypingSoundView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TypingSoundViewModel viewModel,
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
  TypingSoundViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TypingSoundViewModel();
}

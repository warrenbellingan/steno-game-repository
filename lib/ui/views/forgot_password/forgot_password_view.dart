import 'package:Steno_Game/ui/constants/game_png.dart';
import 'package:Steno_Game/ui/constants/game_ui_text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../custom_widget/game_bar.dart';
import '../../custom_widget/game_body.dart';
import '../../custom_widget/game_button.dart';
import '../../custom_widget/game_image.dart';
import '../../custom_widget/game_textfield.dart';
import '../../custom_widget/game_title_text.dart';
import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StackedView<ForgotPasswordViewModel> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return GameBody(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GameBar(),
            GameTitleText(text: GameUIText.forgotPassText),
            GameImage(path: GamePng.gameAuthForgotPath),
            SizedBox(
              height: 25,
            ),
            GameTextField(
              controller: viewModel.emailController,
              label: GameUIText.emailText,
            ),
            GameButton(
              text: GameUIText.sentResetPassLinkText,
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  ForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotPasswordViewModel();
}

import 'package:Steno_Game/ui/constants/game_ui_text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../constants/game_png.dart';
import '../../custom_widget/game_body.dart';
import '../../custom_widget/game_button.dart';
import '../../custom_widget/game_image.dart';
import '../../custom_widget/game_password_text_field.dart';
import '../../custom_widget/game_textButton.dart';
import '../../custom_widget/game_textfield.dart';
import '../../custom_widget/game_title_text.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      LoginViewModel viewModel,
      Widget? child,
      ) {
    return GameBody(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GameTitleText(text: GameUIText.welcomeText),
            SizedBox(
              height: 10,
            ),
            GameImage(path: GamePng.gameAuthLoginPath),
            SizedBox(
              height: 25,
            ),
            GameTextField(
              controller: viewModel.emailController,
              label: GameUIText.emailText,
            ),
            GamePasswordTextField(
              controller: viewModel.passwordController,
              label: GameUIText.passwordText,
            ),
            SizedBox(
              height: 10,
            ),
            GameButton(
              text: GameUIText.loginText,
              onClick: viewModel.logIn,
            ),
            SizedBox(
              height: 20,
            ),
            GameTextButton(
              title: GameUIText.createNewAccText,
              onClick: viewModel.goToSignUp,
            ),
            GameTextButton(
              title: GameUIText.forgotPassText,
              onClick: viewModel.goToForgotPassword,
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      LoginViewModel();
}

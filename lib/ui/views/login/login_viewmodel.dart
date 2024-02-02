import 'package:Steno_Game/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void logIn() {
    _navigationService.replaceWithHomeView();
  }

  void goToForgotPassword() {
    _navigationService.navigateToForgotPasswordView();
  }

  void goToSignUp() {
    _navigationService.navigateToSignInView();
  }
}

import 'package:Steno_Game/services/authentication_service.dart';
import 'package:Steno_Game/ui/constants/game_ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class SignInViewModel extends BaseViewModel {

  final _authenticationService = locator<AuthenticationService>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  Future<void> signUp() async {
    setBusy(true);
    final response = await _authenticationService.signUp(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        role: roleController.text);
    setBusy(false);

    response.fold((l) => print(l.message), (r) => print("Successfully created"));
  }
}

import 'package:Steno_Game/services/authentication_service.dart';
import 'package:Steno_Game/ui/constants/game_ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SignInViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _snackBarService = locator<SnackbarService>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  Future<void> signUp() async {
    if (passwordController.text.toString() !=
            confirmPasswordController.text.toString() ||
        passwordController.text.isEmpty) {
      return _snackBarService.showSnackbar(
        message: "Password doesn't match ${passwordController.text}",
        duration: Duration(seconds: 2),
      );
    } else {
      setBusy(true);
      final response = await _authenticationService.signUp(
          name: nameController.text.toString(),
          email: emailController.text.toString(),
          password: passwordController.text.toString(),
          role: roleController.text.toString());
      setBusy(false);

      response.fold(
          (l) => _snackBarService.showSnackbar(
                message: l.message,
                duration: Duration(seconds: 2),
              ),
          (r) => _snackBarService.showSnackbar(
                message: "Created Succcessfully",
                duration: Duration(seconds: 2),
              ));
    }
  }
}

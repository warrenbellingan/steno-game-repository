import 'package:Steno_Game/app/app.locator.dart';
import 'package:Steno_Game/app/app.router.dart';
import 'package:Steno_Game/services/shared_preference_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/user.dart';

class HomeViewModel extends BaseViewModel {

  final _sharedPref = locator<SharedPreferenceService>();

  final PageController pageController = PageController(initialPage: 0);
  final _navigationService = locator<NavigationService>();
  int currentPageIndex = 0;

  late User user;

  // String keyText = '';
  // FocusNode focusNode = FocusNode();
  // void onKeyReceived(RawKeyEvent event) {
  //   final keyLabel = event.character!;
  //   if (keyLabel.isNotEmpty) {
  //     keyText = keyLabel;
  //     rebuildUi();
  //   }
  // }
  // bntPressed(BuildContext context) {
  //   FocusScope.of(context).requestFocus(focusNode);
  // }

  init() async{
    setBusy(true);
    final getUser = await _sharedPref.getCurrentUser();
    setBusy(false);
    if(getUser != null) {
      user = getUser;
    }
  }

  void onPageChanged(int index) {
    currentPageIndex = index;
    rebuildUi();
  }

  void changePage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onDestinationSelected(int index) {
    currentPageIndex = index;
    changePage(currentPageIndex);
  }

  void goToProfileView() {
    _navigationService.navigateToProfileView();
  }
}

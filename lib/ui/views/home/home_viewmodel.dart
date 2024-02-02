import 'package:Steno_Game/app/app.locator.dart';
import 'package:Steno_Game/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  final _navigationService = locator<NavigationService>();
  int currentPageIndex = 0;

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

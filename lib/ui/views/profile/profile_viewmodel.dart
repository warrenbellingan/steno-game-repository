import 'package:Steno_Game/app/app.locator.dart';
import 'package:Steno_Game/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void logOut() {
    _navigationService.popRepeated(1);
    _navigationService.replaceWithLoginView();
  }
}

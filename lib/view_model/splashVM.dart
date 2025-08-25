import 'dart:ui';

import 'package:get/get.dart';

import '../repository/settingsRepository.dart';
import '../res/routes/routeNames.dart';

class SplashScreenViewMoodel extends GetxController {
  final _settingsRepository = SettingsRepository();
  void splashScreen() {
    Get.offAndToNamed(RouteName.BottomNavBar);
  }

  getTheme() async {
    final theme = await _settingsRepository.getThemeMode();
    Get.changeThemeMode(theme);
  }

}

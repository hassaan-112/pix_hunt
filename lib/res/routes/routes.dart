import 'package:pix_hunt/res/routes/routeNames.dart';
import 'package:pix_hunt/view/imageDetailScreen.dart';
import 'package:pix_hunt/view/settings.dart';
import 'package:pix_hunt/view/splashScreen.dart';
import 'package:pix_hunt/view/searchScreen.dart';
import 'package:get/get.dart';

import '../../view/bottomNav.dart';


class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () { return Splashscreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(seconds: 3)),
    GetPage(name: RouteName.SearchScreen, page: () { return SearchScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 1000)),
    GetPage(name: RouteName.SettingsScreen, page: () { return SettingsScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 1000)),
    GetPage(name: RouteName.ImageDetailScreen, page: () { return ImageDetailScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 1000)),
    GetPage(name: RouteName.BottomNavBar, page: () { return BottomNavBar(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 1000)),
  ];
}

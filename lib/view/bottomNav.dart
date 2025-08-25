import 'package:flutter/material.dart';
import 'package:pix_hunt/view/settings.dart';
import 'package:pix_hunt/view/searchScreen.dart';
import '../view_model/bottomNavVM.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final navBarVM = Get.put(NavBarViewModel());
    List<Widget> pages = [SearchScreen(), SettingsScreen()];

    return Scaffold(
      body: Obx(() => IndexedStack(index: navBarVM.index, children: pages)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (value) {
            navBarVM.setIndex(value);
          },
          currentIndex: navBarVM.index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search".tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "settings".tr,
            ),
          ],
        ),
      ),
    );
  }
}

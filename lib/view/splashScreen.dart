import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pix_hunt/res/assets/icons.dart';
import 'package:pix_hunt/res/routes/routeNames.dart';
import 'package:pix_hunt/view_model/splashVM.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final splashVM = Get.put(SplashScreenViewMoodel());
  double turns = 0.0;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    splashVM.getTheme(); //fetch theme from shared preferences
    _timer = Timer.periodic(Duration(seconds: 1), (Timer r) {
      if (mounted) {
        setState(() {
          turns += 1 / 4;
        });
      }
    }); // control animation
    Timer(Duration(seconds: 3), () {
      // Get.offAndToNamed(RouteName.BottomNavBar);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
              child: SvgPicture.asset(
                IconNames.debianLogo,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcIn,
                ),
                height: Get.width * 0.4,
              ),
            ),
            Text(
              "Pix Hunt",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}

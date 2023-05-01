import 'dart:async';
import 'package:cric_update/routes/route_helper.dart';
import 'package:get/get.dart';
import 'package:cric_update/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../../widgets/big_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 1))..forward();
    Timer( const Duration(seconds: 2), () => Get.offAllNamed(RouteHelper.getHomePage()));
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Dimensions.splashScreenImgSize,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/app_icon.png'))
            ),
          ),
          ScaleTransition(
            scale: controller,
              child: BigText(text: 'Cric Update', fontWeight: FontWeight.w500, size: Dimensions.font24,)),

        ],
      ),
    );
  }
}

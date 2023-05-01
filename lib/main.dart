import 'package:cric_update/pages/splash/splash_screen.dart';
import 'package:cric_update/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getSplashPage(),
    );
  }
}

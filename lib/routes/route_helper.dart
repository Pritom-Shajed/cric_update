import 'package:cric_update/pages/home/home_page.dart';
import 'package:cric_update/pages/splash/splash_screen.dart';
import 'package:get/get.dart';

class RouteHelper{

  static const String splashPage = '/splash-page';
  static const String homePage = '/home-page';

  static String getSplashPage() => splashPage;
  static String getHomePage() => homePage;

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: ()=> const SplashScreen()),
    GetPage(name: homePage, page: ()=> const HomePage()),
  ];
}
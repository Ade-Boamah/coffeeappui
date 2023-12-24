import 'package:coffeeappui/utils/export.dart';

class AppRoutes {
  static const String coffeeDetailsPage = "/coffee_details_page";
  static const String homePage = "/home_page";
  static const String bottomNavPage = "/bottom_nav_page";
  static const String cartPage = "/cart_page";
  static const String profilePage = "/profile_page";

  static Map<String, WidgetBuilder> routes = {
    coffeeDetailsPage: (context) => const CoffeeDetailsPage(),
    homePage: (context) => const HomePage(),
    bottomNavPage: (context) => const BottomNavPage(),
    cartPage: (context) => const CartPage(),
    profilePage: (context) => const ProfilePage(),
  };
}

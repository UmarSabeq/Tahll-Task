import 'package:get/get.dart';
import 'package:task/navbar/navbar.dart';
import 'package:task/pages/home/home.dart';
import 'package:task/pages/messages/messages.dart';
import 'package:task/pages/parteners/parteners.dart';
import 'package:task/pages/products/products.dart';
import 'package:task/pages/profile/profile.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: parteners, page: () => const Parteners()),
    GetPage(name: products, page: () => const Products()),
    GetPage(name: messages, page: () => const Messages()),
    GetPage(name: profile, page: () => const Profile()),
  ];

  static getNavBar() => navbar;
  static getHome() => home;
  static getParteners() => parteners;
  static getProducts() => products;
  static getmessages() => messages;
  static getProfile() => profile;

  // Paths
  static String navbar = '/';
  static String home = '/home';
  static String parteners = '/parteners';
  static String products = '/products';
  static String messages = '/messages';
  static String profile = '/profile';
}

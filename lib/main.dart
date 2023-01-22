import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:task/routes/routes.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.rtl,
    child: GetMaterialApp(
      theme: ThemeData(fontFamily: 'Loew'),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.getNavBar(),
      getPages: AppPage.routes,
    ),
  ));
}

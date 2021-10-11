import 'package:flutter/material.dart';
import 'package:siciliamafianew/resources/routes.dart';
import 'package:siciliamafianew/ui/pages/home_page.dart';
import 'package:siciliamafianew/ui/pages/login_administrator_page.dart';
import 'package:siciliamafianew/ui/pages/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       Routes.HOME_PAGE : (context) => HomePage(),
       Routes.LOGIN_ADMINISTRATOR : (context) => LoginAdministrator(),
       Routes.MAIN_MENU : (context) => MainMenu(),
     },
     initialRoute: Routes.HOME_PAGE,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:siciliamafianew/resources/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.MAIN_MENU);
                },
                icon: Icon(Icons.menu)),
            title: Text('Users list:'),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.LOGIN_ADMINISTRATOR);
                  },
                  icon: Icon(Icons.login))
            ]),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Row(
                children: [
                  Text('User $index'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

// void addLocale() {
//   final localBase lBase = LocaleBase();
//   lBase.load();
// }

}

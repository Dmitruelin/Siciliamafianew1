import 'package:flutter/material.dart';
import 'package:siciliamafianew/ui/pages/home_page.dart';

class MainMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main menu')),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.menu, ),
              title: HomePage(),
              trailing: Text('String # $index'),
            );
          })
    );
  }
}

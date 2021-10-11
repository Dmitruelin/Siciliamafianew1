import 'package:flutter/material.dart';
import 'package:siciliamafianew/resources/strings.dart';

class LoginAdministrator extends StatelessWidget {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _loginFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final _hintText = Strings.EMPTY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login administrator page'),
          leading: IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_left)),
          actions: [
            IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.logout)),
          ]
      ),

      body: Container(
        alignment: Alignment.center,
        child: Card(
            color: Theme
                .of(context)
                .cardColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.7,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.5,
              child: Column(
                children: [
                  Text('123'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: _hintText,
                    ),
                      focusNode: _loginFocusNode,
                      autofocus: true,
                      maxLines: 1,
                      maxLength: 30,
                      controller: _loginController,
                      onChanged: (String value) {
                      },
                      // onSubmitted:
                  ),
                  TextField(
                    focusNode: _passwordFocusNode,
                      maxLines: 1,
                      maxLength: 30,
                      controller: _passwordController,
                      onChanged: (String value) {
                      }
                  ),
                  ElevatedButton(onPressed: () {}, child: Container())
                ],
              ),
            )
        ),
      ),
    );
  }
}
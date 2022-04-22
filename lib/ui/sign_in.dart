import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lessom_5/routes/app_routes.dart';

import 'contants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        foregroundColor: Colors.black54,
        title: Text('Ro`yxatdan o`tish'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 52,
            child: TextField( autocorrect: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'elektron pochtangiz',
              ),),
          ),
          Container(
            height: 52,
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'parolingiz',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  AppContants.key.currentState!.context,
                  AppRoutes.user_name,
                );
              },
              child: Text('Keyingisi'))
        ],
      ),
    );
  }
}

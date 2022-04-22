import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lessom_5/routes/app_routes.dart';

import 'contants.dart';

class KirishPage extends StatefulWidget {
  const KirishPage({Key? key}) : super(key: key);

  @override
  _KirishPageState createState() => _KirishPageState();
}

class _KirishPageState extends State<KirishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kirish'),
      ),
      body: Column(
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
                AppRoutes.home,
              );
            },
            child: Text('Kirish'),
          )
        ],
      ),
    );
  }
}

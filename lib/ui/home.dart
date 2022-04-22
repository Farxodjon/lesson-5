import 'package:flutter/material.dart';
import 'package:lessom_5/routes/app_routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

String title = 'Home page';

class _HomepageState extends State<Homepage> {
  void Save() async {
    final result = await Navigator.of(context).pushNamed(
      AppRoutes.user_name,
    );
    if (result != null) {
      setState(() {
        title = result.toString();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

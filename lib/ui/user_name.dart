import 'package:flutter/material.dart';
import 'package:lessom_5/routes/app_routes.dart';
import 'contants.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController information = TextEditingController();

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
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'user name ',
              ),

              controller: information,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pop(information.text.toString());
              Navigator.pushReplacementNamed(
                AppContants.key.currentState!.context,
                AppRoutes.kirish,
              );
            },
            child: Text('Ro`yxatdan o`tish'),
          ),
          Container(
              child:
              Text('Ro’yxat o’tish tugmasini bosish orqali siz photogram ijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.')),
        ],
      ),
    );
  }
}

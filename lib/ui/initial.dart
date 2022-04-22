import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessom_5/routes/app_routes.dart';
import 'contants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(bottom: 15),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 15,
              left: 15,
              child: Column(
                children: [
                  Container(
                    height: 52,
                    width: 150,
                    child: const Text('Photogram'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            AppContants.key.currentState!.context,
                            AppRoutes.kirish,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          elevation: MaterialStateProperty.resolveWith<double>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return 0;
                              return 0;
                            },
                          ),
                        ),
                        child: Container(
                          height: 52,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          child: const Text('Kirish'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            AppContants.key.currentState!.context,
                            AppRoutes.ruyxatdan_utish,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          elevation: MaterialStateProperty.resolveWith<double>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return 0;
                              return 0;
                            },
                          ),
                        ),
                        child: Container(
                          height: 52,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Ro`yxatdan o`tish',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

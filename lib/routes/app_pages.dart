import 'package:lessom_5/ui/initial.dart';
import 'package:lessom_5/ui/kirish.dart';
import 'package:lessom_5/ui/sign_in.dart';
import 'package:lessom_5/ui/user_name.dart';
import'/routes/app_routes.dart';
import '../ui/home.dart';
class AppPages {
  static final page = {
    AppRoutes.initial: (context) => const OnBoardingPage(),
    AppRoutes.home: (context) => const Homepage(),
    AppRoutes.user_name: (context) => const UserPage(),
    AppRoutes.kirish: (context) => const KirishPage(),
    AppRoutes.ruyxatdan_utish: (context) => const SignInPage(),
  };
}
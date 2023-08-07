import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/login/presentation/login_page.dart';
import 'package:whatsapp_clone/app/splash/presentation/splash_screen.dart';
import 'package:whatsapp_clone/app/welcome/presentation/welcome_page.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/sizer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => const SplashScreen(),
          "login_route": (context) => const LoginPage(),
          "welcome_route": (context) => const WelcomePage()
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: KMainColor),
          fontFamily: "Roboto",
          useMaterial3: true,
        ),

      );
      },

    );
  }
}



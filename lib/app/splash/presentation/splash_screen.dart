import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_icon_animation_page.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      await Future.delayed(const Duration(seconds: 5),() {
        Navigator.pushNamed(context,"welcome_route");
      },);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.sp,horizontal: 20.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kMainColor
                ),
                child: Container(
                    height: 100,
                    width: 100,
                    color: kMainColor,
                    child: const AppIconAnimation()),
                // child: SizedBox(
                //     height: 150.sp,
                //     width: 150.sp,
                //     child: ImageUtils.appIcon),
              ),
            ),
          )
        ],
      ),
    );
  }
}

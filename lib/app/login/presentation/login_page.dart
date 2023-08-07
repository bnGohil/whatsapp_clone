import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/image_utils.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KWhite,
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.sp),
            Center(
             child: SizedBox(
                 height: 50.sp,width: 50.sp,
                 child: ImageUtils.appIcon),
           ),
            SizedBox(height: 70.sp),
            Text("Login to your Account")
          ],
        ),
      ),
    );
  }
}

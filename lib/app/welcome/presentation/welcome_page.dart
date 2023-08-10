import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/custom_buttom_sheet.dart';
import 'package:whatsapp_clone/components/custom_button.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/extension.dart';
import 'package:whatsapp_clone/utils/image_utils.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Padding(
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
              Text("Welcome to Chat!",style: CustomTextStyle.blackFount25w500),
              SizedBox(height: 20.sp),
              SizedBox(
                  height: 300.sp,
                  width: double.infinity,
                  child: ImageUtils.welcomeUserIcon),
              SizedBox(height: 50.sp),
              CustomButton(
                btnText: "Sign in",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                    return const CustomBottomSheet();
                  },);
                },
                btnTextStyle: CustomTextStyle.btnTextStyle,
              ),
              SizedBox(height: 20.sp),
              CustomButton(
                onTap: () {

                },
                btnText: "Sign up",
                btnTextStyle: CustomTextStyle.btnTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

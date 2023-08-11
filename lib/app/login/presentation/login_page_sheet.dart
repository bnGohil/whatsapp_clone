import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/login/domin/social_login_model.dart';
import 'package:whatsapp_clone/components/custom_button.dart';
import 'package:whatsapp_clone/components/custom_text_from_filed.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/extension.dart';
import 'package:whatsapp_clone/utils/image_utils.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';
class LoginSheetPage extends StatefulWidget {
  const LoginSheetPage({super.key});

  @override
  State<LoginSheetPage> createState() => _LoginSheetPageState();
}

class _LoginSheetPageState extends State<LoginSheetPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          decoration: const BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(height: 10.sp,),
                Divider(height: 5.sp,color: kGrey,endIndent: 155.sp,indent: 155.sp,thickness: 2.sp,),
                Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.cancel_outlined))),
                Center(
                  child: SizedBox(
                      height: 50.sp,width: 50.sp,
                      child: ImageUtils.appIcon),
                ),
                SizedBox(height: 50.sp,),
                Text("Login to your Account",style: CustomTextStyle.blackFount20w400,),
                SizedBox(height: 20.sp,),
                 CustomTextFromFiled(
                   prefixIcon: const Icon(Icons.email_outlined,color: kMainColor),
                   hintText: "Email",
                   textInputAction: TextInputAction.next,
                   textInputType: TextInputType.emailAddress,
                   fieldValidator: (value) {
                     return ;
                   },
                   textEditingController: emailController,
                 ),
                SizedBox(height: 25.sp,),
                CustomTextFromFiled(
                  prefixIcon: const Icon(Icons.password,color: kMainColor),
                  hintText: "Password",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.go,
                  fieldValidator: (value) {
                    return ;
                  },
                  textEditingController: passwordController,
                ),
                SizedBox(height: 25.sp,),
                CustomButton(
                  btnText: "Sign in",
                  btnTextStyle: CustomTextStyle.btnTextStyle,
                ),
                SizedBox(height: 30.sp,),
                Center(child: Text("-- Or sign in with --",style: CustomTextStyle.blackFount20w400,)),
                SizedBox(height: 30.sp,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(SocialLogin.socialLogin.length, (index) => Material(
                    shape: CardDecoration.textFromFiledCardDec,
                    color: kWhite,
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.sp,vertical: 10.sp),
                      child: SizedBox(
                        height: 25.sp,
                        width: 25.sp,
                        child: SocialLogin.socialLogin[index].socialIcon,
                      ),
                    ),
                  )),
                ),
                SizedBox(height: 20.sp,),
                Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account ? ",
                      style: CustomTextStyle.blackFount10w300,
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: CustomTextStyle.blackFount10w300.copyWith(
                            color: kMainColor,fontWeight: FontWeight.w500
                          ),
                        )
                      ]
                    ),
                  ])),
                ),
                SizedBox(height: 20.sp,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


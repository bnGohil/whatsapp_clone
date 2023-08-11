import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_text_from_filed.dart';
import '../../../utils/constants.dart';
import '../../../utils/extension.dart';
import '../../../utils/image_utils.dart';
import '../../login/domin/social_login_model.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 600.sp,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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
                        Text("Create your Account",style: CustomTextStyle.blackFount20w400,),
                        SizedBox(height: 20.sp,),
                        CustomTextFromFiled(
                          prefixIcon: const Icon(Icons.account_circle_outlined,color: kMainColor),
                          hintText: "Name",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          fieldValidator: (value) {
                            return ;
                          },
                          textEditingController: emailController,
                        ),
                        SizedBox(height: 25.sp,),
                        CustomTextFromFiled(
                          prefixIcon: const Icon(Icons.phone,color: kMainColor),
                          hintText: "Number",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          fieldValidator: (value) {
                            return ;
                          },
                          textEditingController: numberController,
                        ),
                        SizedBox(height: 25.sp,),
                        CustomTextFromFiled(
                          prefixIcon: const Icon(Icons.email_outlined,color: kMainColor),
                          hintText: "Email",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.emailAddress,
                          fieldValidator: (value) {
                            return ;
                          },
                          textEditingController: numberController,
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
                        CustomTextFromFiled(
                          prefixIcon: const Icon(Icons.password,color: kMainColor),
                          hintText: "ConfirmPassword",
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.go,
                          fieldValidator: (value) {
                            return ;
                          },
                          textEditingController: confirmPasswordController,
                        ),
                        SizedBox(height: 25.sp,),
                        CustomButton(
                          btnText: "Sign un",
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
                                text: "Do you have already account ? ",
                                style: CustomTextStyle.blackFount10w300,
                                children: [
                                  TextSpan(
                                    text: "Sign in",
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}

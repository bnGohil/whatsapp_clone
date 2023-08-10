import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';

class CustomButton extends StatelessWidget {
  final String? btnText;
  final TextStyle? btnTextStyle;
  final bool? isLoading;
  final GestureTapCallback? onTap;
  const CustomButton({super.key, this.btnText, this.btnTextStyle, this.isLoading, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading == true ? null : onTap,
      child: Card(
        elevation: 5,
        color: kMainColor,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.sp),
            child: Center(child: isLoading == true ? const CupertinoActivityIndicator(
              animating: true,
              radius: 10,
              color: kWhite,
            ) : Text(btnText ?? "",style: btnTextStyle))),
      ),
    );
  }
}

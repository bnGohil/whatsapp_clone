import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/extension.dart';
class CustomTextFromFiled extends StatelessWidget {
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? fieldValidator;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  const CustomTextFromFiled({super.key, this.textEditingController, this.fieldValidator, this.hintText, this.prefixIcon, this.textInputType, this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Material(
        shape: CardDecoration.textFromFiledCardDec,
        color: kWhite,
        elevation: 5,
        child: TextFormField(
          controller: textEditingController,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          validator: (value) => fieldValidator?.call(value),
          decoration:  InputDecoration(
            border: InputBorder.none,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: CustomTextStyle.blackFount18w400
          ),
        ),
      ),
    );
  }
}

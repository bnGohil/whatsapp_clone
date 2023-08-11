import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';

extension CustomTextStyle on TextStyle{
  static TextStyle get blackFount25w500 => TextStyle(
    color: kBlack,
    fontWeight: FontWeight.w700,
    fontFamily: "Roboto",
    fontSize: 25.sp);
  static TextStyle get blackFount20w400 => TextStyle(
      color: kGrey,
      fontWeight: FontWeight.w400,
      fontSize: 20.sp);

  static TextStyle get blackFount10w300 => TextStyle(
      color: kGrey,
      fontWeight: FontWeight.w300,
      fontFamily: "Roboto",
      fontSize: 15.sp);

  static TextStyle get blackFount18w400 => TextStyle(
      color: kGrey,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400,
      fontSize: 18.sp);
  static TextStyle get btnTextStyle => TextStyle(
    color: kWhite,
    fontFamily: "Roboto",
    fontWeight: FontWeight.w700,
    fontSize: 15.sp);
}
extension CardDecoration on ShapeBorder{
  static ShapeBorder get textFromFiledCardDec => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
}
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';

extension CustomTextStyle on TextStyle{
  static TextStyle get blackFount25w500 => TextStyle(
    color: kBlack,
    fontWeight: FontWeight.w700,
    fontSize: 25.sp);
  static TextStyle get btnTextStyle => TextStyle(
    color: kWhite,
    fontWeight: FontWeight.w700,
    fontSize: 15.sp);
}
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/utils/image_utils.dart';

class SocialLogin{
  Widget? socialIcon;
  SocialLogin({this.socialIcon});
  static List<SocialLogin> socialLogin = [
    SocialLogin(socialIcon: ImageUtils.googleIcon),
    SocialLogin(socialIcon: ImageUtils.faceBookIcon),
    SocialLogin(socialIcon: ImageUtils.twitterIcon),
  ];
}
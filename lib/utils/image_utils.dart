import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String svgImagePath = "assets/images/all_svg_image";
const String pngImagePath = "assets/images/all_png_images";
class ImageUtils{
 static Widget get appIcon => const CustomSvgImage(
   fit: BoxFit.contain,
   alignment: Alignment.center,
 );
 static Widget get welcomeUserIcon => const CustomAssetsImage(path: "welcome_user.png",fit: BoxFit.contain,alignment: Alignment.center);
}
class CustomSvgImage extends StatelessWidget {
  final Color? color;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  const CustomSvgImage({super.key, this.color, this.fit, this.alignment, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("$svgImagePath/all_logo.svg",color: color, fit: fit!, alignment: alignment!, height: height, width: width);
  }
}
class CustomAssetsImage extends StatelessWidget {
  final Color? color;
  final BoxFit? fit;
  final String? path;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  const CustomAssetsImage({super.key, this.color, this.fit, this.alignment, this.height, this.width, this.path});


  @override
  Widget build(BuildContext context) {
    return Image.asset("$pngImagePath/$path",color: color, fit: fit!, alignment: alignment!, height: height, width: width);
  }
}

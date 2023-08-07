import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String svgImagePath = "assets/images/all_svg_image";
class ImageUtils{
 static Widget get appIcon => const CustomSvgImage(
   fit: BoxFit.contain,
   alignment: Alignment.center,
 );
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

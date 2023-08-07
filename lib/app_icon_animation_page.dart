import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/image_utils.dart';
class AppIconAnimation extends StatefulWidget {
  const AppIconAnimation({super.key});

  @override
  State<AppIconAnimation> createState() => _AppIconAnimationState();
}

class _AppIconAnimationState extends State<AppIconAnimation> with SingleTickerProviderStateMixin{
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _controller?.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: KMainColor,
      body: Stack(
        children: <Widget>[
          Align(
            child: ScaleTransition(
              scale: Tween(begin: 0.75, end: 2.0)
                  .animate(CurvedAnimation(
                  parent: _controller!, curve: Curves.easeInOut)
              ),
              child: Container(
                color: KMainColor,
                height: 50,
                width: 50,
                child: ImageUtils.appIcon
              ),
            ),
          ),
        ],
      ),
    );
  }
}

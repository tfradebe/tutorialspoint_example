import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  MyAnimatedWidget({this.child, this.animation});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              child: Opacity(
                opacity: animation.value,
                child: child,
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

class StyledLoadingProgress extends StatefulWidget {
  final Color color;

  const StyledLoadingProgress({Key? key, this.color = YucaColorStyles.base0}) : super(key: key);

  @override
  RotateImageState createState() => RotateImageState();
}

class RotateImageState extends State<StyledLoadingProgress> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            child: AnimatedBuilder(
              animation: animationController,
              child: Icon(
                YucaIcons.loading,
                color: widget.color,
              ),
              builder: (context, _widget) {
                return Transform.rotate(
                  angle: animationController.value * 6.3,
                  child: _widget,
                );
              },
            )),
      ],
    );
  }

  void stopRotation() {
    animationController.stop();
  }

  void startRotation() {
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

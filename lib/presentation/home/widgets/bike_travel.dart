import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel2mar/core/assets_helper.dart';

class BikeTravelWidget extends StatefulWidget {
  const BikeTravelWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BikeTravelWidget> createState() => _BikeTravelWidgetState();
}

class _BikeTravelWidgetState extends State<BikeTravelWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;
  bool isCollege = false;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    offset = Tween<Offset>(begin: Offset.zero, end: const Offset(2.5, 0))
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    void travel() {
      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
        Timer(const Duration(milliseconds: 1100), () {
          setState(() {
            isCollege = false;
          });
        });
      } else {
        controller.forward();
        Timer(const Duration(milliseconds: 1100), () {
          setState(() {
            isCollege = true;
          });
        });
      }
    }

    return Align(
      alignment: Alignment.bottomLeft,
      child: SlideTransition(
        position: offset,
        child: AnimatedOpacity(
          opacity: 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: GestureDetector(
            onTap: () => travel(),
            child: Image.asset(
              isCollege ? Assets.LeftSideBike : Assets.RightSideBike,
              height: 60,
              width: 60,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

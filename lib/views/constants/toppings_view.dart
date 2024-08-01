import 'package:flutter/material.dart';

class ToppingsView extends StatelessWidget {
  const ToppingsView({
    super.key,
    this.left1,
    this.top1,
    this.right1,
    this.bottom1,
    this.left2,
    this.top2,
    this.right2,
    this.bottom2,
    this.left3,
    this.top3,
    this.right3,
    this.bottom3,
    this.left4,
    this.top4,
    this.right4,
    this.bottom4,
    this.left5,
    this.top5,
    this.right5,
    this.bottom5,
    this.left6,
    this.top6,
    this.right6,
    this.bottom6,
    this.left7,
    this.top7,
    this.right7,
    this.bottom7,
    this.left8,
    this.top8,
    this.right8,
    this.bottom8,
    required this.element,
    required this.onElementTap,
    required this.addButton,
  });
  final double? left1;
  final double? top1;
  final double? right1;
  final double? bottom1;

  final double? left2;
  final double? top2;
  final double? right2;
  final double? bottom2;

  final double? left3;
  final double? top3;
  final double? right3;
  final double? bottom3;

  final double? left4;
  final double? top4;
  final double? right4;
  final double? bottom4;

  final double? left5;
  final double? top5;
  final double? right5;
  final double? bottom5;

  final double? left6;
  final double? top6;
  final double? right6;
  final double? bottom6;

  final double? left7;
  final double? top7;
  final double? right7;
  final double? bottom7;

  final double? left8;
  final double? top8;
  final double? right8;
  final double? bottom8;

  final dynamic element;
  final Function() onElementTap;
  final Widget addButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: left1,
          top: top1,
          right: right1,
          bottom: bottom1,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[0]),
                ),
        ),
        Positioned(
          left: left2,
          top: top2,
          right: right2,
          bottom: bottom2,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[1]),
                ),
        ),
        Positioned(
          left: left3,
          top: top3,
          right: right3,
          bottom: bottom3,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[2]),
                ),
        ),
        Positioned(
          left: left4,
          top: top4,
          right: right4,
          bottom: bottom4,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[3]),
                ),
        ),
        Positioned(
          left: left5,
          top: top5,
          right: right5,
          bottom: bottom5,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[4]),
                ),
        ),
        Positioned(
          left: left6,
          top: top6,
          right: right6,
          bottom: bottom6,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[5]),
                ),
        ),
        Positioned(
          left: left7,
          top: top7,
          right: right7,
          bottom: bottom7,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[6]),
                ),
        ),
        Positioned(
          left: left8,
          top: top8,
          right: top8,
          bottom: bottom8,
          child: element == null
              ? addButton
              : GestureDetector(
                  onTap: onElementTap,
                  child: Image.asset(element[7]),
                ),
        ),
      ],
    );
  }
}

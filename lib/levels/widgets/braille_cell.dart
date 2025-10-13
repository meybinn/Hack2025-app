import 'package:flutter/material.dart';

class BrailleCell extends StatelessWidget{
  final List<bool> active;
  final double size;
  final double hgap;
  final double vgap;
  final Color onColor;
  final Color offColor;

  const BrailleCell({
    super.key,
    required this.active,
    required this.onColor,
    required this.offColor,
    this.size = 28,
    this.hgap = 10,
    this.vgap = 10,
  });
  
  @override
  Widget build(BuildContext context) {
    assert(active.length == 6);

    Widget dot(bool on) => Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: on ? onColor : offColor,
        shape: BoxShape.circle,
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            dot(active[0]),
            SizedBox(width: hgap,),
            dot(active[1]),
          ],
        ),
        SizedBox(height: vgap,),
        Row(
          children: [
            dot(active[2]),
            SizedBox(width: hgap,),
            dot(active[3]),
          ],
        ),
        SizedBox(height: vgap,),
        Row(
          children: [
            dot(active[4]),
            SizedBox(width: hgap,),
            dot(active[5]),
          ],
        ),
      ],
    );
  }
}
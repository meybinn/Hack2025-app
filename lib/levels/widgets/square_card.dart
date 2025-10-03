import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget{
  
  final String? label;
  final Widget? child;
  final Color background;
  final Color foreground;
  final VoidCallback onTap;

  const SquareCard({
    super.key, 
    this.label, 
    this.child, 
    required this.background, 
    required this.foreground, 
    required this.onTap,
  }) : assert(label != null || child != null, 'Either label or child must be provided');
  
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(18),
          alignment: Alignment.center,
          child: child ??
          Text(
            label!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: foreground,
              fontSize: 32,
              height: 1.05,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
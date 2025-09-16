import 'dart:math' as math;

import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget{
  
  final String title;
  final String iconAsset;
  final double iconSize;
  final Color bgColor;
  final Color textColor;
  final VoidCallback? onTap;

  const HomeCard({
    super.key, 
    required this.title, 
    this.bgColor = const Color(0xFF75B7B3), 
    this.textColor = Colors.black, 
    this.onTap, 
    required this.iconAsset, 
    this.iconSize = 28,
    });
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child:   InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),        //border radius grid cards
          ),
          child: LayoutBuilder(
            builder: (context, c) {
              final base = math.min(c.maxWidth, c.maxHeight);
              double size =
                    iconSize < 1.0 ? base * iconSize : iconSize;
                    size = size.clamp(20.0, base * 0.35);
            
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size,
                  height: size,
                  child: Image.asset(
                    iconAsset,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
            
              ],
            );
          },
        ),
        ),
      ),
    );
  }

}
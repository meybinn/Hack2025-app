import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget{
  
  final double value;
  final double height;
  final Color bgColor;
  final Color fillColor;
  final String? labelRight;

  const ProgressBar({
    super.key,
    required this.value,
    required this.height,
    required this.bgColor,
    required this.fillColor,
    this.labelRight,

  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Expanded(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value.clamp(0.65, 1),
            child: Container(
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
        ),
      ),
      if(labelRight != null)
        const SizedBox(
          width: 8,
        ),
        Text(
          labelRight!, 
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget{
  
  final String label;
  final Color background;
  final Color foreground;
  final VoidCallback onPressed;

  const MenuButton({
    super.key, 
    required this.label, 
    required this.background, 
    required this.foreground, 
    required this.onPressed,
  });
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: foreground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          textStyle: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
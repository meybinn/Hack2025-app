import 'package:flutter/material.dart';

class ConnectedButton extends StatelessWidget {
  
  final bool isConnected;
  final VoidCallback? onPressed;
  final String iconPng;

  const ConnectedButton({
    super.key, 
    required this.isConnected, 
    this.onPressed, 
    required this.iconPng
  });
  
  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF75B7B3);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 19),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () {}, 
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                  iconPng,
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                ),
            const SizedBox(width: 40,),
            Text(
              isConnected ? '연결됨' : '연결 안 됨',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        ),
    );
  }
}
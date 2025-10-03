import 'package:flutter/material.dart';
import 'package:hack2025_mobile_app/commons/constant/sizes.dart';
import 'package:hack2025_mobile_app/widgets/checkBox.dart';

class Userinterests extends StatefulWidget {
  const Userinterests({super.key});

  @override
  State<Userinterests> createState() => _UserinterestsState();
}

class _UserinterestsState extends State<Userinterests> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding:const EdgeInsets.symmetric(vertical: Sizes.size24, horizontal: Sizes.size18),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
            ),
            child: const Column(
              children: [InterestCheckbox()],
            )
          );
  }
}
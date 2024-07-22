import 'dart:math';

import 'package:eyesync/components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFeatures extends StatelessWidget {
  final String mainFeatureName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  MainFeatures({
    super.key,
    required this.mainFeatureName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: powerOn ? const Color(0xFF8478F3) : secondaryColor,
            borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //icons
              Image.asset(iconPath,
                  height: 65, color: powerOn ? Colors.white : Colors.black),

              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      mainFeatureName,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: powerOn ? Colors.white : Colors.black),
                    ),
                  )),
                  Transform.rotate(
                      angle: pi / 2,
                      child:
                          CupertinoSwitch(value: powerOn, onChanged: onChanged))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

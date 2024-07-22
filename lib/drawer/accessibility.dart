import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccessibilityScreen extends StatelessWidget {
  const AccessibilityScreen({super.key});

@override
    Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text("Accessibility", style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),),
      backgroundColor: primaryColor,
    ),
    body: const Center(
      child: Text("Dito nakalagay deets"),),
  );
  
    }
}
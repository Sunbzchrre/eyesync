import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportScreen extends StatelessWidget {
@override
    Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("Help and Support", style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),),
      backgroundColor: primaryColor,
    ),
    body: Center(
      child: Text("Dito nakalagay deets"),),
  );
  
    }
}
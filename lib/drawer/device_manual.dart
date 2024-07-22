import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceManual extends StatefulWidget {
  const DeviceManual({super.key});

  @override
  State<DeviceManual> createState() => _DeviceManualState();
}

class _DeviceManualState extends State<DeviceManual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "EyeWalk Device Manual",
          style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 'Get Started' Text with Divider
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 15.0),
              child: Text(
                'Let\'s Get Started...',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.black26,
              indent: 16.0,
              endIndent: 16.0,
            ),
            // Main Image
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              width: double.infinity,
              height: 240,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    '/thumbnails/isync.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Icon for the main image
                  const Icon(
                    Icons.play_arrow_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // 'Other essential guides' Text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(
                'Other essential guides',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // GridView for Images
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildGridItem('/thumbnails/troubleshoot.png'),
                  _buildGridItem('/thumbnails/connect.png'),
                  _buildGridItem('/thumbnails/battery.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath) {
    return Material(
      elevation: 5.0, // Elevation effect
      borderRadius: BorderRadius.circular(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0), // Rounded edges
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey, // Gray background color
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              const Icon(
                Icons.play_arrow_rounded,
                size: 60,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

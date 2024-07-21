import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceManual extends StatefulWidget {
  const DeviceManual({super.key});

  @override
  State<DeviceManual> createState() => _DeviceManualState();
}

class _DeviceManualState extends State<DeviceManual> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("Help & Support", style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),),
      backgroundColor: primaryColor,
    ),
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height:15),
            // TITLE PART
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'EyeWalk Device Manual',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 36,
                ),
              ),
            ),
            

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const Divider(
                  color: Color.fromARGB(255, 212, 212, 212),
                  thickness: 1,
                  ),
                ),
              
              const SizedBox(height: 15),
     
              // Text 'Get Started'
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Get Started...',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
         
            // SCROLLABLE CONTENT PART
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    // Main Image
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      width: double.infinity,
                      height: 240,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            '/thumbnails/isync.png',
                            width: 1280,
                            height: 720,
                            fit: BoxFit.fitWidth,
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (hovering) {
                              setState(() {
                                _isHovering = hovering;
                              });
                            },
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: _isHovering ? 80 : 60, // Change size based on hover state
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // GRIDVIEW FOR IMAGE
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 2,
                      children: [
                        _buildGridItem('/thumbnails/troubleshoot.png'),
                        _buildGridItem('/thumbnails/connect.png'),
                        _buildGridItem('/thumbnails/battery.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          InkWell(
            onTap: () {},
            onHover: (hovering) {
              setState(() {
                _isHovering = hovering;
              });
            },
            child: Icon(
              Icons.play_arrow_rounded,
              size: _isHovering ? 60 : 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
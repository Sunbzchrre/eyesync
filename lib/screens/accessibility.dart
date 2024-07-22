import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceManual extends StatefulWidget {
  const DeviceManual({super.key});

  @override
  State<DeviceManual> createState() => _DeviceManualState();
}

class _DeviceManualState extends State<DeviceManual> {
  final bool _isPanning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [

            // APP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, size: 40, color: primaryColor),
                    onPressed: () {
                      Navigator.of(context).pop(); // Redirect to the home screen
                    },
                  ),
                ],
              ),
            ),
            
            // TITLE PART
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Accessibility Options',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 36,
                ),
              ),
            ),
            

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Divider(
                  color: Color.fromARGB(255, 212, 212, 212),
                  thickness: 1,
                  ),
                ),
              
              const SizedBox(height: 15),
                    
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
                      child: const Stack(
                        alignment: Alignment.center,
                        children: [
                        ],
                      ),
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
}
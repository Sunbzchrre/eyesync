import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          // FAQs
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 15.0),
            child: Text(
              'Personalize Themes',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),

          // FAQS LISTVIEW
          Container(
            height: 350.0, // Set the height of the horizontal list view
            margin: const EdgeInsets.only(left: 50.0), // Left margin for horizontal list view
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8.0), // Margin between items
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), // Rounded edges
                        child: Container(
                          width: 150.0,
                          height: 280.0,
                          color: Colors.grey,
                          child: Image.asset(
                            '/images/themes/light.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Default (Light)',
                        style: GoogleFonts.poppins(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8.0), // Margin between items
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), // Rounded edges
                        child: Container(
                          width: 150.0,
                          height: 280.0,
                          color: Colors.grey,
                          child: Image.asset(
                            '/images/themes/dim.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Dim Theme',
                        style: GoogleFonts.poppins(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8.0), // Margin between items
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), // Rounded edges
                        child: Container(
                          width: 150.0,
                          height: 280.0,
                          color: Colors.grey,
                          child: Image.asset(
                            '/images/themes/dark.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Dark Theme',
                        style: GoogleFonts.poppins(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8.0), // Margin between items
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), // Rounded edges
                        child: Container(
                          width: 150.0,
                          height: 280.0,
                          color: primaryColor,
                          child: const Icon(
                            Icons.add_rounded,
                            size: 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Add Theme',
                        style: GoogleFonts.poppins(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

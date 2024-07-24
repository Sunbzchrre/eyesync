import 'package:eyesync/components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccessibilityScreen extends StatefulWidget {
  const AccessibilityScreen({super.key});

  @override
  State<AccessibilityScreen> createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState extends State<AccessibilityScreen> {
  bool isTextToSpeechEnabled = false;
  bool isHighContrastEnabled = false;
  bool isMagnificationGesturesEnabled = false;
  bool isScreenReaderEnabled = false;
  bool isMonoAudioEnabled = false;
  bool isAccessibilityShortcutEnabled = false;

  void _showConfirmationDialog(String title, String content, bool value, Function(bool) onToggle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
          content: Text(content, style: GoogleFonts.poppins()),
          actions: [
            TextButton(
              child: Text('Cancel', style: GoogleFonts.poppins(color: primaryColor)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text(value ? 'Disable' : 'Enable', style: GoogleFonts.poppins()),
              onPressed: () {
                onToggle(!value);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Accessibility",
          style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 60.0, left: 10.0, right: 10.0), 
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 5.0),
                child: Text(
                  'Personalize Themes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                height: 30,
                thickness: 1,
                color: thirdyColor,
                indent: 16.0,
                endIndent: 16.0,
              ),

              // THEME HORIZONTAL LIST
              Container(
                height: 350.0,
                margin: const EdgeInsets.only(left: 50.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
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
                            style: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
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
                            'Dim Light',
                            style: GoogleFonts.poppins(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
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
                            'Dark',
                            style: GoogleFonts.poppins(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: 150.0,
                              height: 280.0,
                              color: primaryColor,
                              child: const Icon(
                                Icons.add_rounded,
                                size: 80,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Add Theme',
                            style: GoogleFonts.poppins(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              // ACCESSIBLITY OPTIONS ITEMS
              const Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 10.0),
                child: Text(
                  'Display Settings',
                  style: TextStyle(
                    fontSize: 20.0, 
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.display_settings_rounded, color: thirdyColor),
                      title: Text(
                        'Display Size',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),

                    ListTile(
                      leading: Icon(Icons.font_download, color: thirdyColor),
                      title: Text(
                        'Fonts',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                  ]
                ),
              ),

              const SizedBox(height: 10.0),

              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.transcribe_rounded, color: thirdyColor),
                  title: Text(
                    'Text-to-Speech Feature',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isTextToSpeechEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'Text-to-Speech',
                      'Do you want to ${value ? 'enable' : 'disable'} Text-to-Speech feature?',
                      isTextToSpeechEnabled,
                      (newValue) {
                        setState(() {
                          isTextToSpeechEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Text-to-Speech feature ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),

              const SizedBox(height: 10.0),

              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.settings_display_rounded, color: thirdyColor),
                  title: Text(
                    'High Contrast Display',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isHighContrastEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'High Contrast',
                      'Do you want to ${value ? 'enable' : 'disable'} High Contrast Display?',
                      isHighContrastEnabled,
                      (newValue) {
                        setState(() {
                          isHighContrastEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('High Contrast Display ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),

              const SizedBox(height: 15.0),

              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 15.0, bottom: 10.0),
                child: Text(
                  'Motor and Cognition',
                  style: TextStyle(
                    fontSize: 20.0, 
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                ),
              ),
              
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.zoom_in_map_rounded, color: thirdyColor),
                  title: Text(
                    'Magnification Gestures',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isMagnificationGesturesEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'Magnification Gestures',
                      'Do you want to ${value ? 'enable' : 'disable'} Magnification Gestures?',
                      isMagnificationGesturesEnabled,
                      (newValue) {
                        setState(() {
                          isMagnificationGesturesEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Magnification Gestures ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),
              
              const SizedBox(height: 10.0),

              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.screen_lock_portrait_rounded, color: thirdyColor),
                  title: Text(
                    'Screen Reader',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isScreenReaderEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'Screen Reader',
                      'Do you want to ${value ? 'enable' : 'disable'} the Screen Reader?',
                      isScreenReaderEnabled,
                      (newValue) {
                        setState(() {
                          isScreenReaderEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Screen Reader is ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),

              const SizedBox(height: 10.0),

              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.shortcut_rounded, color: thirdyColor),
                  title: Text(
                    'Accessibility Shortcut',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isAccessibilityShortcutEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'Accessibility Shortcut',
                      'Do you want to ${value ? 'enable' : 'disable'} the Accessibility Shortcut?',
                      isAccessibilityShortcutEnabled,
                      (newValue) {
                        setState(() {
                          isAccessibilityShortcutEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Accessibility Shortcut ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),
              
              const SizedBox(height: 15.0),

              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 15.0, bottom: 10.0),
                child: Text(
                  'Hearing',
                  style: TextStyle(
                    fontSize: 20.0, 
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                ),
              ),

              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.headset_rounded, color: thirdyColor),
                  title: Text(
                    'Mono Audio',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: CupertinoSwitch(
                  value: isMonoAudioEnabled,
                  onChanged: (value) {
                    _showConfirmationDialog(
                      'Mono Audio',
                      'Do you want to ${value ? 'enable' : 'disable'} Mono Audio?',
                      isMonoAudioEnabled,
                      (newValue) {
                        setState(() {
                          isMonoAudioEnabled = newValue;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Mono Audio is ${newValue ? 'enabled' : 'disabled'}')),
                        );
                      },
                    );
                  },
                ),
                ),
              ),

              const SizedBox(height: 20.0),
              
            ],
          ),

          //SEARCH BAR
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true, 
                    fillColor: Colors.grey.withOpacity(0.2), 
                    hintText: 'Search here...',
                    hintStyle: GoogleFonts.poppins( 
                    fontSize: 16.0,
                    color: thirdyColor, 
                    ),
                    prefixIcon: const Icon(Icons.search, color: thirdyColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: thirdyColor),
                    ),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

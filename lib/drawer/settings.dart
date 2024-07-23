import 'package:eyesync/components/color.dart';
import 'package:flutter/gestures.dart';
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
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 60.0, left: 10.0, right: 10.0), 
            children: [
              // FAQs section
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

              // Horizontal list view for the themes
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


              // Settings List
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
                      leading: Icon(Icons.settings, color: thirdyColor),
                      title: Text(
                        'Device Network & Internet',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.link_rounded, color: thirdyColor),
                      title: Text(
                        'Connected EyeWalk Devices',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.gps_fixed, color: thirdyColor),
                  title: Text(
                    'GPS Tracking and Location',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 15.0),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                elevation: 5.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.battery_charging_full, color: thirdyColor),
                  title: Text(
                    'Battery and Power',
                    style: GoogleFonts.poppins(color: thirdyColor),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 15.0),
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
                      leading: Icon(Icons.privacy_tip, color: thirdyColor),
                      title: Text(
                        'Account Privacy & Security',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PasswordScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.info, color: thirdyColor),
                      title: Text(
                        'About EyeSync',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
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
                      leading: Icon(Icons.update, color: thirdyColor),
                      title: Text(
                        'EyeSync App Updates',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip, color: thirdyColor),
                      title: Text(
                        'Privacy Statement and Policies',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.report_problem, color: thirdyColor),
                      title: Text(
                        'Report Technical Problems',
                        style: GoogleFonts.poppins(color: thirdyColor),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: const Icon(Icons.arrow_forward_ios_rounded, color: thirdyColor),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          //SEARCH SETTINGS BAR
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
                    hintText: 'Search in Settings',
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


class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isTwoFactorEnabled = false;
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _changePassword() {
    // Implement password change logic here
    String currentPassword = _currentPasswordController.text;
    String newPassword = _newPasswordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (newPassword != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('New passwords do not match')),
      );
      return;
    }

    // Assume the password change is successful
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Password changed successfully')),
    );

    // Clear text fields
    _currentPasswordController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();
  }

  void _toggleTwoFactorAuthentication(bool value) {
    setState(() {
      _isTwoFactorEnabled = value;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Two-Factor Authentication ${value ? "enabled" : "disabled"}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Text(
            'Security',
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.lock, color: primaryColor),
            title: Text('Change Password', style: GoogleFonts.poppins(fontSize: 18)),
            onTap: () {
              _showChangePasswordDialog();
            },
          ),
          SwitchListTile(
            title: Text('Enable Two-Factor Authentication', style: GoogleFonts.poppins(fontSize: 18)),
            value: _isTwoFactorEnabled,
            onChanged: _toggleTwoFactorAuthentication,
            secondary: Icon(Icons.security, color: primaryColor),
          ),
        ],
      ),
    );
  }

  void _showChangePasswordDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Password', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _currentPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Current Password'),
                ),
                TextField(
                  controller: _newPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'New Password'),
                ),
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Confirm New Password'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel', style: GoogleFonts.poppins(color: primaryColor)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Change', style: GoogleFonts.poppins()),
              onPressed: () {
                _changePassword();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

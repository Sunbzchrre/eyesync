import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyesync/components/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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

void main() {
  runApp(MaterialApp(
    home: SettingsScreen(),
  ));
}

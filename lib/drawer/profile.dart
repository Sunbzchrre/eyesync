import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text('Profile', style: GoogleFonts.poppins(color: Colors.white)),
        backgroundColor: const Color(0xFF8478F3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Rheaann Gonzales', 
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'eyesync@gmail.com', // Replace with actual user email
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Account Details',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(thickness: 2),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                'Full Name',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              subtitle: Text(
                'Rhea Anne Gonzales',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: Text(
                'Email',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              subtitle: Text(
                'eyesync@gmail.com', 
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text(
                'Phone Number',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              subtitle: Text(
                '0912-345-6789',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_city),
              title: Text(
                'Address',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              subtitle: Text(
                '123 St., Brgy. Krusty Krab, Sa Tabi Tabi Lang City', 
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      );
  }
}

import 'package:eyesync/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyesync/drawer/device_manual.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

@override
    Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text("Help & Support", style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),),
      backgroundColor: primaryColor,
    ),

    body: ListView(
          children: [
            // FAQs
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 15.0),
              child: Text(
                'Frequently Asked Questions (FAQs)',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            
            // FAQS LISTVIEW
            Container(
              height: 240.0, // Set the height of the horizontal list view
              margin: const EdgeInsets.only(left: 50.0), // Left margin for horizontal list view
              child: ListView(
                
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8.0), // Margin between items
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), // Rounded edges
                      child: Container(
                        width: 170.0,
                        color: newColor1,
                        child: Center(child: Text("1", style: GoogleFonts.poppins(fontSize: 60, color: secondaryColor, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),

                 Container(
                    margin: const EdgeInsets.only(right: 8.0), // Margin between items
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), // Rounded edges
                      child: Container(
                        width: 170.0,
                        color: newColor2,
                        child: Center(child: Text("2", style: GoogleFonts.poppins(fontSize: 60, color: secondaryColor, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),

                 Container(
                    margin: const EdgeInsets.only(right: 8.0), // Margin between items
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), // Rounded edges
                      child: Container(
                        width: 170.0,
                        color: newColor3,
                        child: Center(child: Text("3", style: GoogleFonts.poppins(fontSize:60, color: secondaryColor, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                 ),
                  // Add more horizontal items if needed
                ],
              ),
            ),

            // Space between horizontal list and vertical list
            const SizedBox(height: 16.0),

            // LISTS
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10,),
              elevation: 5.0,
              color: Colors.white, // Off-white color
              child: ListTile(
                title: const Text('EyeWalk Basic Manual'),
                trailing: const Icon(Icons.arrow_circle_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeviceManual(),
                    ),
                  );
                },
              ),
            ),
          
            // Add more cards as needed
          ],
        ),
  );
  
    }
}
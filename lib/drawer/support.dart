import 'package:eyesync/components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyesync/drawer/device_manual.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Help & Support",
          style: GoogleFonts.poppins(fontSize: 20, color: secondaryColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // QUESTIONS START
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Do you have any questions?',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your question...',
                      hintStyle: GoogleFonts.poppins( 
                        fontSize: 16.0,
                        color: thirdyColor, 
                      ),
                      prefixIcon: Icon(Icons.search, color: thirdyColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // FAQs START
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 10.0),
              child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Frequently Asked Questions (FAQs)',
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Divider(
              height: 18,
              thickness: 1,
              color: thirdyColor,
              indent: 16.0,
              endIndent: 16.0,
            ),
            
            // FAQS LISTVIEW
            Container(
              height: 280.0,
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  //FAQS-1
                  Container(
                    margin: EdgeInsets.only(right: 8.0), 
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), 
                      child: Container(
                        width: 200.0,
                        color: newColor1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.help_outline, 
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    'Q1',
                                    style: GoogleFonts.bebasNeue(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'What is iSync?',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    'EyeSync is an exclusive mobile app made for EyeWalk device, developed for its management. ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //FAQs-2
                  Container(
                    margin: EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), 
                      child: Container(
                        width: 200.0,
                        color: newColor2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.help_outline, 
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    'Q2', 
                                    style: GoogleFonts.bebasNeue(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'What can I do if encountered a technical problem?', 
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    'The EyeWalk Basic Manuals provide the necessary guides to solve technical problems with the device', 
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //FAQs-3
                  Container(
                    margin: EdgeInsets.only(right: 8.0), 
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), 
                      child: Container(
                        width: 200.0,
                        color: newColor3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.help_outline, 
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    'Q3', 
                                    style: GoogleFonts.bebasNeue(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'How can I personalize EyeSync mobile app?', 
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    'EyeSync enables its users to browse on options depending on what they wants. ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8.0),

            // EYEWALK BASIC MANUALS CARD
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              elevation: 5.0,
              color: Colors.white, // Off-white color
              child: ListTile(
                title: Text(
                  'EyeWalk Basic Manuals',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16.0,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeviceManual(),
                    ),
                  );
                },
              ),
            ),

            Divider(
              height: 8.0,
              thickness: 1,
              color: thirdyColor,
              indent: 16.0,
              endIndent: 16.0,
            ),


            //FR MORE INFOS CARD START
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                                        blurRadius: 5,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'For more information, contact us at:',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // First card
                  Card(
                    color: Colors.white,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor, width: 5.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.email, color: primaryColor),
                      title: Text(
                        'eyewalk.eyesync@gmail.com',
                        style: GoogleFonts.poppins(
                          fontStyle: FontStyle.italic,
                          color: thirdyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Second card
                  Card(
                    color: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor, width: 5.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: primaryColor),
                      title: Text(
                        '0912-232-3233',
                        style: GoogleFonts.poppins(
                          fontStyle: FontStyle.italic,
                          color: thirdyColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

          ],
        ),
      ),

      //START A CONVERSATION BAR

      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          
          child: Row(
            children: [
              Icon(Icons.chat_rounded, color: thirdyColor),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Start a conversation',
                    hintStyle: GoogleFonts.poppins(
                      fontStyle: FontStyle.italic,
                      color: thirdyColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(Icons.arrow_upward_rounded, color: thirdyColor),
            ],
          ),
        ),
      ),
    );
  }
}


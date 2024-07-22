import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyesync/components/color.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _rating = 0;
  final TextEditingController _messageController = TextEditingController();

  void _submitFeedback() {
    // Handle the feedback submission logic here
    String message = _messageController.text;
    // For demonstration, we'll just show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Feedback submitted: Rating - $_rating, Message - $message')),
    );
    // Clear the message field
    _messageController.clear();
    // Reset the rating
    setState(() {
      _rating = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Feedback',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We value your feedback!',
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor),
            ),
            SizedBox(height: 20),
            Text(
              'Please rate your experience:',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 10),
            _buildRatingBar(),
            SizedBox(height: 20),
            Text(
              'Your Message:',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _messageController,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your message here...',
              ),
              style: GoogleFonts.poppins(),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _submitFeedback,
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Send Feedback',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildAdditionalFeatures(),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBar() {
    return Row(
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 36,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1.0;
            });
          },
        );
      }),
    );
  }

  Widget _buildAdditionalFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Additional Features:',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),
        ),
        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.question_answer, color: primaryColor),
          title: Text(
            'FAQs',
            style: GoogleFonts.poppins(),
          ),
          onTap: () {
            // Navigate to FAQ screen
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_support, color: primaryColor),
          title: Text(
            'Contact Support',
            style: GoogleFonts.poppins(),
          ),
          onTap: () {
            // Navigate to Contact Support screen
          },
        ),
        ListTile(
          leading: Icon(Icons.bug_report, color: primaryColor),
          title: Text(
            'Report a Bug',
            style: GoogleFonts.poppins(),
          ),
          onTap: () {
            // Navigate to Bug Report screen
          },
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FeedbackScreen(),
  ));
}

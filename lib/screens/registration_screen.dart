import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyesync/components/color.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isAccepted = false;
  String? _password;

  void _navigateToLogin() {
    Navigator.pushNamed(context, '/login');
  }
  void _showTermsAndConditions() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Terms and Conditions', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Eye Sync, a mobile-based application designed for guardians to monitor the Eye Walk device. Eye Walk is a navigation device for the visually impaired, featuring obstacle detection, location tracking, and alert mechanisms. By using the Eye Sync application and the Eye Walk device, you agree to the following terms and conditions:',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Text(
                  '1. Acceptance of Terms',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'By using Eye Sync and Eye Walk, you agree to comply with and be bound by these terms and conditions. If you do not agree to these terms, please do not use our application or device.',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                const SizedBox(height: 16),
                Text(
                  '2. Description of Services',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Eye Walk is a navigation device for the visually impaired that includes obstacle detection, location tracking, and alert mechanisms. Eye Sync is a mobile application designed for guardians to monitor the Eye Walk device, providing real-time updates and alerts.',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                Text(
                  '3. User Responsibilities',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Users are responsible for ensuring that the Eye Walk device is used properly and maintained in good working condition. Guardians using the Eye Sync spplication is responsible for monitoring the device and responding to alerts in a timely manner.',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                Text(
                  '4. Privacy and Data Collection',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'We are commited to protecting your privacy. The Eye Sync application collects and stores data related to the location and status of the Eye Walk device. This data is used solely for the purpose of providing monitoring services to guardians. We do not share this data with third parties.',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Decline', style: GoogleFonts.poppins()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Accept', style: GoogleFonts.poppins()),
              onPressed: () {
                setState(() {
                  _isAccepted = true;
                });
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
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF8478F3),
                Color(0xFF8478F3),
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Create Your\nAccount',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.check,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Full Name',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF8478F3),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Email',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8478F3),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            color: Colors.grey,
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          label: Text(
                            'Password',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF8478F3),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          _password = value;
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: !_isConfirmPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isConfirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            color: Colors.grey,
                            onPressed: () {
                              setState(() {
                                _isConfirmPasswordVisible =
                                    !_isConfirmPasswordVisible;
                              });
                            },
                          ),
                          label: Text(
                            'Confirm Password',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF8478F3),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != _password) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                       const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: _isAccepted,
                            onChanged: (value) {
                              if (value != null && value) {
                                _showTermsAndConditions();
                              } else {
                                setState(() {
                                  _isAccepted = false;
                                });
                              }
                            },
                          ),
                          GestureDetector(
                            onTap: _showTermsAndConditions,
                            child: Text(
                              'I accept the terms and conditions',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF8478F3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            if (_isAccepted) {
                              _navigateToLogin();
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'You must accept the terms and conditions to continue.',
                                    style: GoogleFonts.poppins(),
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      /*const SizedBox(
                        height: 20,
                      ),*/
                      /*const SizedBox(
                        height: 70,
                      ),*/
                      /*GestureDetector(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            _navigateToLogin();
                          }
                        },*/
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(colors: [
                              Color(0xFF8478F3),
                              Color(0xFF8478F3),
                            ]),
                          ),
                          child: const Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Already have an account?",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: primaryColor,
                                ),
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
          ),
        ],
      ),
    );
  }
}

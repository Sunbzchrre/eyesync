import 'package:eyesync/drawer/accessibility.dart';
import 'package:eyesync/drawer/device_manual.dart';
import 'package:eyesync/drawer/profile.dart';
import 'package:eyesync/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:eyesync/screens/login_screen.dart';
import 'package:eyesync/screens/registration_screen.dart';
import 'package:eyesync/screens/welcome_screen.dart';
import 'package:eyesync/screens/home_screen.dart';
import 'package:eyesync/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eyesync/drawer/settings.dart';
import 'package:eyesync/drawer/feedback.dart';
import 'package:eyesync/drawer/support.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;
  runApp(MyApp(
    onboarding: onboarding,
  ));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EyeSync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), // Initial route is the splash screen
        '/onboarding': (context) => const OnboardingView(),
        '/home': (context) => const HomeScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/device-manual': (context) => const DeviceManual(),
        '/accessibility': (context) => const AccessibilityScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/feedback': (context) => const FeedbackScreen(),
        '/support': (context) => const SupportScreen(),
      },
    );
  }
}

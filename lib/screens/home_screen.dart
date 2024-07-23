import 'package:eyesync/components/color.dart';
import 'package:eyesync/util/features.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //padding
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  //features mains
  List eyeWalkFeatures = [
    ['Eye Walk', 'assets/icon/glass.png', true],
    ['Locate', 'assets/icon/locate.png', false],
    ['Alert', 'assets/icon/alert.png', false],
    ['Charge', 'assets/icon/life.png', false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      eyeWalkFeatures[index][2] = value;
    });
  }

  void _navigatetoProfile(BuildContext context) {
    Navigator.pushNamed(context, '/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
             DrawerHeader(
              decoration: BoxDecoration(
              color:primaryColor,
              ),
              child: 
                UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: primaryColor),
                accountName: Text("Rhea Anne Gonzales",
                style: GoogleFonts.poppins(fontSize: 18, color: secondaryColor, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("gonzalesrheaann@gmail.com", style: GoogleFonts.poppins(fontSize: 15, color: secondaryColor),),
                ),
            ),
            ListTile(
              leading:Icon(Icons.home, color: primaryColor),
              title: Text("Home",  style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, '/home');
                });           
              },
            ),
            ListTile(
              leading:Icon(Icons.book, color: primaryColor),
              title: Text("Accessibility",  style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, '/accessibility');
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.feedback, color: primaryColor),
              title: Text("Feedback",  style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),  
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, '/feedback');
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.settings, color: primaryColor),
              title: Text("Settings",  style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),  
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, '/settings');
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.help, color: primaryColor),
              title: Text("Help and Support",  style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),  
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, '/support');
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: primaryColor),
              title: Text("Logout", style: GoogleFonts.poppins(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),),
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context,'/welcome');
                });
              },
            ),
          ]
        )
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app bar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //icon menu
                children: [ Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                    'assets/icon/menu.png',
                    height: 45,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  ),),

                  //user icon
                  IconButton(
                    icon: const Icon(
                    Icons.person,
                    size: 45,
                    color: thirdyColor,
                  ),
                  onPressed: () {
                    _navigatetoProfile(context);
                  },
                  ), 
                ],
              ),
            ),

            const SizedBox(height: 20),
            //welcome
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi There!',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    'GUARDIAN',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 72,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Color.fromARGB(255, 212, 212, 212),
                thickness: 1,
              ),
            ),

            const SizedBox(height: 25),

            //items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'EyeSync with EyeWalk',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color.fromARGB(255, 212, 212, 212)),
              ),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: eyeWalkFeatures.length,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                itemBuilder: (context, index) {
                  return MainFeatures(
                    mainFeatureName: eyeWalkFeatures[index][0],
                    iconPath: eyeWalkFeatures[index][1],
                    powerOn: eyeWalkFeatures[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

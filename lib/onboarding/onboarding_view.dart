import 'package:eyesync/components/color.dart';
import 'package:eyesync/onboarding/onboarding_items.dart';
import 'package:eyesync/screens/home_screen.dart';
import 'package:eyesync/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/top.png', //top image asset
              fit: BoxFit.cover,
              height: 260,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bot.png', // bottom image asset
              fit: BoxFit.cover,
              height: 230,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) => setState(
                    () => isLastPage = controller.items.length - 1 == index,
                  ),
                  itemCount: controller.items.length,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 85),
                        Image.asset(controller.items[index].image),
                        const SizedBox(height: 15),
                        SmoothPageIndicator(
                          controller: pageController,
                          count: controller.items.length,
                          onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                          ),
                          effect: const ExpandingDotsEffect(
                            dotHeight: 5,
                            dotWidth: 12,
                            expansionFactor: 4,
                            activeDotColor: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Text(
                          controller.items[index].title,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          controller.items[index].description,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                color: Colors.white
                    .withOpacity(0), // opacity for bottom image effect
                child: isLastPage ? getStartedRow() : navigationButtons(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getStartedRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Previous button
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 223, 222, 222),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 35),
            onPressed: () => pageController.previousPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
            ),
          ),
        ),
        const SizedBox(width: 30),

        // Get Started button
        Expanded(
          child: Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(10),
            color: primaryColor,
            child: Container(
              height: 53,
              child: TextButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool("onboarding", true);

                  // After pressing get started
                  if (!mounted) return;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Skip button
        TextButton(
          onPressed: () =>
              pageController.jumpToPage(controller.items.length - 1),
          child: const Text(
            "Skip",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 45),

        // Next button
        Container(
          decoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Material(
            shape: const CircleBorder(),
            color: primaryColor,
            elevation: 7.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward,
                  color: Colors.white, size: 35),
              onPressed: () => pageController.nextPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

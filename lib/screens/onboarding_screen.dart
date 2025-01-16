import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'chatbot_screen.dart'; // Replace with the actual path of your ChatbotScreen

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    final onboardingData = [
      {
        'title': 'Welcome to Our College Chatbot',
        'subtitle': 'Your virtual assistant for all college-related queries. Ask anything about our college!',
        'lottie': 'bot2',
      },
      {
        'title': 'Discover Campus Life',
        'subtitle': 'Explore details about courses, events, facilities, and more. Get instant answers to your questions!',
        'lottie': 'bot1',
      },
    ];


    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          final isLast = index == onboardingData.length - 1;

          return Column(
            children: [
              // Lottie animation
              Lottie.asset(
                'assets/${onboardingData[index]['lottie']}.json',
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.7,
              ),

              // Title
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  onboardingData[index]['title']!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Subtitle
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  onboardingData[index]['subtitle']!,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),

              // Dots indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                      (i) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    width: i == index ? 12 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: i == index ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Navigation button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // Set the text color here
                  ),
                  onPressed: () {
                    if (isLast) {
                      // Navigate to ChatbotScreen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const ChatbotScreen()),
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(isLast ? 'Finish' : 'Next'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

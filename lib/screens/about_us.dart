import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back)),
        title: const Text('About Us'),
          backgroundColor: Colors.grey
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'About Vega - Vidya Educational Guidance and Assistance Chatbot',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Description
            Text(
              'Vega is a chatbot developed for Vidya Academy of Science and Technology Technical Campus, Kilimanoor. '
                  'It stands for Vidya Educational Guidance and Assistance Chatbot, providing all the details about the college. '
                  'Vega can assist students and staff by answering queries related to courses, events, campus facilities, and more.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Project Info
            Text(
              'Project Details:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'This project was created by the students of Semester 8, Group 9, as a part of their main project. '
                  'The team worked collaboratively to develop Vega, which integrates a vast amount of information about the college into an interactive chatbot.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // College Info
            Text(
              'College Details:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Vidya Academy of Science and Technology Technical Campus, Kilimanoor, is one of the premier institutions providing quality education in the field of engineering and technology. '
                  'It is located in the serene and beautiful surroundings of Kilimanoor, Kerala, offering undergraduate and postgraduate programs.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('About Us', style: TextStyle(fontFamily: 'Orbitronb')),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildPage(
                context,
                title: 'About Vega',
                content:
                'Vega is a chatbot developed for Vidya Academy of Science and Technology Technical Campus, Kilimanoor. '
                    'It stands for Vidya Educational Guidance and Assistance Chatbot, providing all the details about the college. '
                    'Vega can assist students and staff by answering queries related to courses, events, campus facilities, and more.',
              ),
              buildPage(
                context,
                title: 'Project Details',
                content:
                'This project was created by the students of Semester 8, Group 9, as a part of their main project. '
                    'The team worked collaboratively to develop Vega, which integrates a vast amount of information about the college into an interactive chatbot.',
              ),
              buildCollegeDetailsCard(context),
              buildPage(
                context,
                title: 'Developers',
                content: '',
                children: [
                  buildDeveloperCard('Parikshith S'),
                  buildDeveloperCard('Sabir Muhammed N S'),
                  buildDeveloperCard('Sarath G R'),
                  buildDeveloperCard('Mukul S B'),
                ],
              ),
              buildContactUsCard(context),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  '© 2025 Developers. All rights reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPage(BuildContext context,
      {required String title,
        required String content,
        String? link,
        String? mapLink,
        List<Widget>? children}) {
    return Card(
      color: Colors.grey.shade400,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0), // Reduced vertical margin
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quantico',
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style:
              Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,fontFamily: 'Quantico'),
            ),
            if (link != null)
              GestureDetector(
                onTap: () async {
                  if (await canLaunch(link)) {
                    await launch(link);
                  }
                },
                child: Text(
                  link,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            if (mapLink != null) ...[
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  if (await canLaunch(mapLink)) {
                    await launch(mapLink);
                  }
                },
                child: Text(
                  'View on Google Maps',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
            if (children != null) ...children,
          ],
        ),
      ),
    );
  }

  Widget buildDeveloperCard(String name) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.grey[200],
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'Quantico', fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Developer',
                style: TextStyle(fontSize: 18,fontFamily: 'Quantico'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCollegeDetailsCard(BuildContext context) {
    return Card(
      color: Colors.grey.shade400,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0), // Reduced vertical margin
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                'College Details',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quantico',
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Vidya Academy of Science and Technology Technical Campus, Kilimanoor, is one of the premier institutions providing quality education in the field of engineering and technology. '
                  'It is located in the serene and beautiful surroundings of Kilimanoor, Kerala, offering undergraduate and postgraduate programs.',
              style:
              Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,fontFamily: 'Quantico'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const url = 'https://vidyatcklmr.ac.in/index.php';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: Text(
                'Visit our Website',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const mapLink = 'https://www.google.com/maps?ll=8.814087,76.848619&z=13&t=h&hl=en-GB&gl=US&mapclient=embed&cid=5888196102986587600';
                if (await canLaunch(mapLink)) {
                  await launch(mapLink);
                }
              },
              child: Text(
                'View on Google Maps',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContactUsCard(BuildContext context) {
    return Card(
      color: Colors.grey.shade400,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                'Contact Us',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quantico',
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.email, color: Colors.black),
                  onPressed: () async {
                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'parikshithanil000@gmail.com',
                    );
                    if (await canLaunch(emailUri.toString())) {
                      await launch(emailUri.toString());
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone, color: Colors.black),
                  onPressed: () async {
                    final Uri phoneUri = Uri(
                      scheme: 'tel',
                      path: '8139822095',
                    );
                    if (await canLaunch(phoneUri.toString())) {
                      await launch(phoneUri.toString());
                    }
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.black),
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/in/parikshith-anil';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.github, color: Colors.black),
                  onPressed: () async {
                    const url = 'https://github.com/Parikshith-S-Anil';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: AboutUsPage(),
));
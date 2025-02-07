import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  final List<Map<String, dynamic>> intents = [
    {
      "tag": "about",
      "patterns": [
        "Tell me about yourself",
        "What is your purpose?",
        "Who are you?",
        "What can you help me with?"
      ],
    },
    {
      "tag": "admissions",
      "patterns": [
        "admissions",
        "How can I apply for admission?",
        "What is the admission process?",
        "When do the admissions start?",
        "How do I apply to the college?",
        "What documents are needed for admission?",
        "Is there an entrance exam for admission?"
      ],
    },
    {
      "tag": "civil_engineering_curriculum",
      "patterns": [
        "Civil Engineering curriculum",
        "Civil Engineering syllabus",
        "Civil Engineering semester courses",
        "Civil Engineering subjects",
        "CE syllabus",
        "What topics are covered in Civil Engineering?",
        "Can you provide details about Civil Engineering courses?"
      ],
    },
    {
      "tag": "contact",
      "patterns": [
        "contact",
        "How can I contact the college?",
        "What is the college telephone number?",
        "Can I get your contact number?",
        "Is there an email address for inquiries?",
        "What are the office hours for the college?"
      ],
    },
    {
      "tag": "courses",
      "patterns": [
        "courses",
        "What courses are offered in the college?",
        "Can you tell me about the available courses?",
        "What are the branches in the college?",
        "Are there any new courses introduced?",
        "What is the duration of the courses?"
      ],
    },
    {
      "tag": "created",
      "patterns": [
        "who created you",
        "who made you",
        "who developed you?",
        "what is your origin?"
      ],
    },
    {
      "tag": "eee_curriculum",
      "patterns": [
        "EEE syllabus",
        "Electrical and Electronics Engineering curriculum",
        "EEE semester courses",
        "Electrical and Electronics Engineering subjects",
        "What are the key subjects in EEE?",
        "Can you explain the EEE coursework?"
      ],
    },
    {
      "tag": "farewell",
      "patterns": [
        "Goodbye",
        "Bye",
        "See you later",
        "Talk to you later",
        "I have to go now",
        "Thanks, see you!"
      ],
    },
    {
      "tag": "greeting",
      "patterns": [
        "Hi",
        "Hello",
        "Hey",
        "Good day",
        "How are you?",
        "hi",
        "hai",
        "What's up?",
        "How's it going?"
      ],
    },
    {
      "tag": "library",
      "patterns": [
        "library",
        "Does the college have a library?",
        "Where is the library located?",
        "What are the library timings?",
        "What resources are available in the library?",
        "Can I borrow books from the library?"
      ],
    },
    {
      "tag": "mechanical_engineering_curriculum",
      "patterns": [
        "ME syllabus",
        "Mechanical Engineering syllabus",
        "Mechanical Engineering semester courses",
        "Mechanical Engineering subjects",
        "What are the core subjects in Mechanical Engineering?",
        "Can you explain the Mechanical Engineering courses?"
      ],
    },
    {
      "tag": "placement",
      "patterns": [
        "placement",
        "How are the placements in the college?",
        "placement?",
        "Tell me about the college placements.",
        "What is the placement record?",
        "What companies visit for placements?",
        "Is there any placement training provided?"
      ],
    },
    {
      "tag": "principal",
      "patterns": [
        "who is the principal?",
        "who is the principal of vidya",
        "who is the principal of college",
        "principal?",
        "principal",
        "Can you tell me about the principal?",
        "What is the educational background of the principal?"
      ],
    },
    {
      "tag": "semester_curriculum",
      "patterns": [
        "Semesters 1 and 2 courses for CSE",
        "first year subjects for Cse",
        "Semesters 3 to 8 courses for cse",
        "Computer Science core subjects",
        "CSE syllabus",
        "What are the elective subjects in CSE?",
        "Can you provide details about the CSE curriculum?"
      ],
    },
    {
      "tag": "sports",
      "patterns": [
        "sports",
        "What are the sports facilities in the college?",
        "Do you have a sports team?",
        "Can I join sports?",
        "What sports are offered?",
        "Are there any competitions for sports?"
      ],
    },
    {
      "tag": "student_clubs",
      "patterns": [
        "student clubs",
        "What clubs are available?",
        "Tell me about the student clubs.",
        "Are there any extracurricular activities?",
        "What are the student clubs in the college?",
        "How can I join a student club?",
        "Are there any events organized by clubs?"
      ],
    },
    {
      "tag": "vidya",
      "patterns": [
        "about vidya",
        "about VAST_TC",
        "about college",
        "vidya",
        "VAST_TC",
        "What is the history of Vidya Academy?",
        "What facilities are available at Vidya Academy?"
      ],
    },
    {
      "tag": "website",
      "patterns": [
        "ktu website",
        "ktu portal",
        "What is the official website of KTU?",
        "Can I access KTU information online?"
      ],
    },
    {
      "tag": "academics",
      "patterns": [
        "academics",
        "What academic programs are offered?",
        "Are there any academic resources available?"
      ],
    },
    {
      "tag": "resources",
      "patterns": [
        "resources",
        "What types of resources are available?",
        "Can you provide a list of resources?"
      ],
    },
    {
      "tag": "naac",
      "patterns": [
        "naac",
        "What is NAAC?",
        "Why is NAAC accreditation important?"
      ],
    },
    {
      "tag": "online_fee_payment",
      "patterns": [
        "online fee payment",
        "How can I pay my fees online?",
        "Is online fee payment secure?"
      ],
    },
    {
      "tag": "regulations",
      "patterns": [
        "regulations",
        "What are the college regulations?",
        "Are there any guidelines for students?"
      ],
    },
    {
      "tag": "transportation",
      "patterns": [
        "transportation",
        "What transportation options are available?",
        "Is there a college bus service?"
      ],
    },
    {
      "tag": "annual_report",
      "patterns": [
        "annual report",
        "Where can I find the annual report?",
        "What does the annual report include?"
      ],
    },
    {
      "tag": "campus_tour",
      "patterns": [
        "campus tour",
        "Can I take a campus tour?",
        "What does the campus tour include?"
      ],
    },
    {
      "tag": "gallery",
      "patterns": [
        "gallery",
        "photo album",
        "Where can I see photos of the college?",
        "Are there any videos of college events?"
      ],
    },
    {
      "tag": "iedc",
      "patterns": [
        "iedc",
        "Innovation and Entrepreneurship Development Cell",
        "What is IEDC?",
        "How can I participate in IEDC activities?"
      ],
    },
    {
      "tag": "achievements",
      "patterns": [
        "achievements",
        "college achievements",
        "What achievements does the college have?",
        "Can you list some notable achievements?"
      ],
    },
    {
      "tag": "staff_area",
      "patterns": [
        "staff area",
        "staff portal",
        "How can staff access their area?",
        "Are there resources available for staff?"
      ],
    },
    {
      "tag": "student_area",
      "patterns": [
        "student area",
        "student portal",
        "How can students access their area?",
        "What resources are available for students?"
      ],
    },
    {
      "tag": "notification",
      "patterns": [
        "notifications",
        "latest notifications",
        "notice board",
        "Where can I find the latest notifications?",
        "Are there any important notices?"
      ],
    },
    {
      "tag": "site_map",
      "patterns": [
        "site map",
        "sitemap",
        "What is the site map?",
        "How can I navigate the website?"
      ],
    },
    {
      "tag": "youtube",
      "patterns": [
        "YouTube",
        "YouTube channel",
        "What content is available on the YouTube channel?",
        "Can I subscribe to the YouTube channel?"
      ],
    },
    {
      "tag": "facebook",
      "patterns": [
        "Facebook",
        "Facebook page",
        "How can I follow you on Facebook?",
        "What updates are posted on Facebook?"
      ],
    },
    {
      "tag": "vision_and_mission",
      "patterns": [
        "vision and mission",
        "vision",
        "mission",
        "What is the vision of the college?",
        "Can you explain the mission statement?"
      ],
    },
    {
      "tag": "governing_body",
      "patterns": [
        "governing body",
        "college governing body",
        "Who is part of the governing body?",
        "What is the role of the governing body?"
      ],
    },
    {
      "tag": "infrastructure",
      "patterns": [
        "infrastructure",
        "college infrastructure",
        "What facilities are available in the college?",
        "Can you describe the college infrastructure?"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'You need to ask these questions to get proper replies from Vega:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: intents.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    title: SelectableText(intents[index]['tag']),
                    subtitle: SelectableText(intents[index]['patterns'].join(', ')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: HelpPage(),
));
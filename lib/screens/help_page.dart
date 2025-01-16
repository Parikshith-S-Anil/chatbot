import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  final List<String> queries = [
    'Tell me about yourself',
    'What is your purpose?',
    'Who are you?',
    'What can you help me with?',
    'How can I apply for admission?',
    'What is the admission process?',
    'When do the admissions start?',
    'How do I apply to the college?',
    'What documents are needed for admission?',
    'Is there an entrance exam for admission?',
    'Civil Engineering curriculum',
    'Civil Engineering syllabus',
    'Civil Engineering semester courses',
    'Civil Engineering subjects',
    'CE syllabus',
    'What topics are covered in Civil Engineering?',
    'Can you provide details about Civil Engineering courses?',
    'How can I contact the college?',
    'What is the college telephone number?',
    'Can I get your contact number?',
    'Is there an email address for inquiries?',
    'What are the office hours for the college?',
    'What courses are offered in the college?',
    'Can you tell me about the available courses?',
    'What are the branches in the college?',
    'Are there any new courses introduced?',
    'What is the duration of the courses?',
    'Who created you?',
    'Who made you?',
    'Who developed you?',
    'What is your origin?',
    'EEE syllabus',
    'Electrical and Electronics Engineering curriculum',
    'EEE semester courses',
    'Electrical and Electronics Engineering subjects',
    'What are the key subjects in EEE?',
    'Can you explain the EEE coursework?',
    'Goodbye',
    'Bye',
    'See you later',
    'Talk to you later',
    'I have to go now',
    'Thanks, see you!',
    'Hi',
    'Hello',
    'Hey',
    'Good day',
    'How are you?',
    'What\'s up?',
    'How\'s it going?',
    'Does the college have a library?',
    'Where is the library located?',
    'What are the library timings?',
    'What resources are available in the library?',
    'Can I borrow books from the library?',
    'ME syllabus',
    'Mechanical Engineering syllabus',
    'Mechanical Engineering semester courses',
    'Mechanical Engineering subjects',
    'What are the core subjects in Mechanical Engineering?',
    'Can you explain the Mechanical Engineering courses?',
    'How are the placements in the college?',
    'Tell me about the college placements.',
    'What is the placement record?',
    'What companies visit for placements?',
    'Is there any placement training provided?',
    'Who is the principal?',
    'Who is the principal of Vidya?',
    'Can you tell me about the principal?',
    'What is the educational background of the principal?',
    'Semesters 1 and 2 courses for CSE',
    'First year subjects for CSE',
    'Semesters 3 to 8 courses for CSE',
    'Computer Science core subjects',
    'CSE syllabus',
    'What are the elective subjects in CSE?',
    'Can you provide details about the CSE curriculum?',
    'What are the sports facilities in the college?',
    'Do you have a sports team?',
    'Can I join sports?',
    'What sports are offered?',
    'Are there any competitions for sports?',
    'What clubs are available?',
    'Tell me about the student clubs.',
    'Are there any extracurricular activities?',
    'How can I join a student club?',
    'Are there any events organized by clubs?',
    'About Vidya',
    'About VAST_TC',
    'What is the history of Vidya Academy?',
    'What facilities are available at Vidya Academy?',
    'KTU website',
    'KTU portal',
    'What is the official website of KTU?',
    'Can I access KTU information online?',
    'What academic programs are offered?',
    'Are there any academic resources available?',
    'What types of resources are available?',
    'Can you provide a list of resources?',
    'What is NAAC?',
    'Why is NAAC accreditation important?',
    'How can I pay my fees online?',
    'Is online fee payment secure?',
    'What are the college regulations?',
    'Are there any guidelines for students?',
    'What transportation options are available?',
    'Is there a college bus service?',
    'Where can I find the annual report?',
    'What does the annual report include?',
    'Can I take a campus tour?',
    'What does the campus tour include?',
    'Where can I see photos of the college?',
    'Are there any videos of college events?',
    'What is IEDC?',
    'How can I participate in IEDC activities?',
    'What achievements does the college have?',
    'Can you list some notable achievements?',
    'How can staff access their area?',
    'Are there resources available for staff?',
    'How can students access their area?',
    'What resources are available for students?',
    'Where can I find the latest notifications?',
    'Are there any important notices?',
    'What is the site map?',
    'How can I navigate the website?',
    'What content is available on the YouTube channel?',
    'Can I subscribe to the YouTube channel?',
    'How can I follow you on Facebook?',
    'What updates are posted on Facebook?',
    'What is the vision of the college?',
    'Can you explain the mission statement?',
    'Who is part of the governing body?',
    'What is the role of the governing body?',
    'What facilities are available in the college?',
    'Can you describe the college infrastructure?'
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
              itemCount: queries.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    title: Text(queries[index]),
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

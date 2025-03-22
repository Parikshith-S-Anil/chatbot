import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
    "tag": "establishment",
    "patterns": [
      "Established date",
      "When was Vidya Academy established?",
      "What is the establishment date of Vidya Academy?",
      "When did Vidya Academy start?",
      "When was Vidya Academy of Science and Technology founded?",
      "When was Vidya Academy of Science and Technology Technical Campus established?"
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
      "tag": "founder",
      "patterns": [
        "founder",
        "Who is the founder of Vidya Academy?",
        "Who established Vidya Academy?",
        "Who founded Vidya Academy of Science and Technology?",
        "Tell me about the founder of Vidya Academy?",
        "Who is the founder of Vidya International Charitable Trust?"
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
      "tag": "CSE_Syllabus",
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
      "tag": "KTU_website",
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
    {
      "tag": "college_office",
      "patterns": [
        "Where is the college office?",
        "Location of college office?",
        "Where can I find the college office?",
        "What is the room number of the college office?",
        "Tell me the location of the college office."
      ],
    },
    {
      "tag": "language_lab",
      "patterns": [
        "Where can I find the language lab?",
        "Location of language lab?",
        "Where is the language lab?",
        "What is the room number of the language lab?",
        "Tell me the location of the language lab."
      ],
    },
    {
      "tag": "computer_lab",
      "patterns": [
        "Where is the computer lab?",
        "Where is the CSE lab?",
        "Where can I find the computer lab?",
        "Location of CSE lab?",
        "Where are CCLab and FOSSlab located?",
        "Where is the CCLab?",
        "Where is the FOSSlab?"
      ],
    },
    {
      "tag": "mech_lab",
      "patterns": [
        "Where is the mechanical lab?",
        "Location of mechanical lab?",
        "Where can I find the mechanical lab?",
        "Where is the mech lab located?",
        "Where is the mechanical lab situated?"
      ],
    },
    {
      "tag": "civil_lab",
      "patterns": [
        "Where is the civil lab?",
        "Location of civil lab?",
        "Where can I find the civil lab?",
        "Where is the civil lab located?",
        "Where is the civil lab situated?"
      ],
    },
    {
      "tag": "electronics_lab",
      "patterns": [
        "Where is the electronics lab?",
        "Location of electronics lab?",
        "Where can I find the electronics lab?",
        "Where is the electronics lab located?",
        "What are the room numbers for the electronics lab?",
        "Where is the comp lab in the electronics department?",
        "Where are the electronics workshops located?"
      ],
    },
    {
      "tag": "mech_seminar_hall",
      "patterns": [
        "Where is the mechanical seminar hall?",
        "Location of mechanical seminar hall?",
        "Where can I find the mechanical seminar hall?",
        "What is the room number of the mechanical seminar hall?"
      ],
    },
    {
      "tag": "civil_seminar_hall",
      "patterns": [
        "Where is the civil seminar hall?",
        "Location of civil seminar hall?",
        "Where can I find the civil seminar hall?",
        "What is the room number of the civil seminar hall?"
      ],
    },
    {
      "tag": "civil_faculty_room",
      "patterns": [
        "Where is the civil faculty room?",
        "Location of civil faculty room?",
        "Where can I find the civil faculty room?",
        "What is the room number of the civil faculty room?"
      ],
    },
    {
      "tag": "mech_faculty_room",
      "patterns": [
        "Where is the mechanical faculty room?",
        "Location of mechanical faculty room?",
        "Where can I find the mechanical faculty room?",
        "What is the room number of the mechanical faculty room?"
      ],
    },
    {
      "tag": "cse_faculty_room",
      "patterns": [
        "Where is the CSE faculty room?",
        "Location of CSE faculty room?",
        "Where can I find the CSE faculty room?",
        "What is the room number of the CSE faculty room?"
      ],
    },
    {
      "tag": "ece_faculty_room",
      "patterns": [
        "Where is the ECE faculty room?",
        "Location of ECE faculty room?",
        "Where can I find the ECE faculty room?",
        "What is the room number of the ECE faculty room?"
      ]
    },
    {
      "tag": "electrical_faculty_room",
      "patterns": [
        "Where is the electrical faculty room?",
        "Location of electrical faculty room?",
        "Where can I find the electrical faculty room?",
        "What is the room number of the electrical faculty room?"
      ]
    },
    {
      "tag": "trust_office",
      "patterns": [
        "Where is the trust office?",
        "Location of trust office?",
        "Where can I find the trust office?",
        "What is the room number of the trust office?"
      ]
    },
    {
      "tag": "iqac_office",
      "patterns": [
        "Where is the IQAC/IEDC office?",
        "Location of IQAC office?",
        "Where can I find the IQAC office?",
        "What is the room number of the IQAC/IEDC office?"
      ]
    },
    {
      "tag": "nss_office",
      "patterns": [
        "Where is the NSS office?",
        "Location of NSS office?",
        "Where can I find the NSS office?",
        "What is the room number of the NSS office?"
      ]
    },
    {
      "tag": "applied_science_faculty_room",
      "patterns": [
        "Where is the applied science faculty room?",
        "Location of applied science faculty room?",
        "Where can I find the applied science faculty room?",
        "What is the room number of the applied science faculty room?"
      ]
    },
    {
      "tag": "sick_room",
      "patterns": [
        "Where is the sick room?",
        "Location of sick room?",
        "Where can I find the sick room?",
        "What is the room number of the sick room?"
      ]
    },
    {
      "tag": "mech_hod",
      "patterns": [
        "Who is the HOD of mechanical department?",
        "HOD of mechanical department?",
        "Who is the head of the mechanical department?",
        "Who is the mechanical department HOD?",
        "Where is the HOD of the mechanical department located?"
      ]
    },
    {
      "tag": "ece_hod",
      "patterns": [
        "Who is the HOD of ECE department?",
        "HOD of ECE department?",
        "Who is the head of the ECE department?",
        "Who is the ECE department HOD?",
        "Where is the HOD of the ECE department located?"
      ]
    },
    {
      "tag": "eee_hod",
      "patterns": [
        "Who is the HOD of EEE department?",
        "HOD of EEE department?",
        "Who is the head of the EEE department?",
        "Who is the EEE department HOD?",
        "Where is the HOD of the EEE department located?"
      ]
    },
    {
      "tag": "cse_hod",
      "patterns": [
        "Who is the HOD of CSE department?",
        "HOD of CSE department?",
        "Who is the head of the CSE department?",
        "Who is the CSE department HOD?",
        "Where is the HOD of the CSE department located?"
      ]
    },
    {
      "tag": "civil_hod",
      "patterns": [
        "Who is the HOD of civil department?",
        "HOD of civil department?",
        "Who is the head of the civil department?",
        "Who is the civil department HOD?",
        "Where is the HOD of the civil department located?"
      ]
    },
    {
      "tag": "tech_fest_vyuha",
      "patterns": [
        "Tell me about Vyuha and the technical fest.",
        "What is Vyuha and when is it conducted?",
        "Details about Vidya College art fest and technical fest.",
        "When does the art fest Vyuha happen?",
        "When is the technical fest conducted?",
        "What events are included in the technical fest?"
      ]
    },
    {
      "tag": "college_timings",
      "patterns": [
        "What are the college timings?",
        "When does the college start and end?",
        "Tell me the college hours.",
        "What is the timing of classes in Vidya Academy?",
        "When do classes start and finish?"
      ]
    },
    {
      "tag": "student_count",
      "patterns": [
        "How many students are there in the college?",
        "What is the approximate student count?",
        "How many students are enrolled in Vidya Academy?",
        "What is the student strength?",
        "Number of students in Vidya Academy?"
      ]
    },
    {
      "tag": "cse_location",
      "patterns": [
        "Where is the CSE department located?",
        "Location of the CSE department?",
        "Where can I find the CSE block?",
        "Which block has the CSE department?",
        "What is the location of the CSE department?"
      ]
    },
    {
      "tag": "ece_location",
      "patterns": [
        "Where is the ECE department located?",
        "Location of the ECE department?",
        "Where can I find the ECE block?",
        "Which block has the ECE department?",
        "What is the location of the ECE department?"
      ]
    },
    {
      "tag": "mech_location",
      "patterns": [
        "Where is the mechanical department located?",
        "Location of the mechanical department?",
        "Where can I find the mechanical block?",
        "Which block has the mechanical department?",
        "What is the location of the mechanical department?"
      ]
    },
    {
      "tag": "electrical_location",
      "patterns": [
        "Where is the electrical department located?",
        "Location of the electrical department?",
        "Where can I find the electrical block?",
        "Which block has the electrical department?",
        "What is the location of the electrical department?"
      ]
    },
    {
      "tag": "civil_location",
      "patterns": [
        "Where is the civil department located?",
        "Location of the civil department?",
        "Where can I find the civil block?",
        "Which block has the civil department?",
        "What is the location of the civil department?"
      ]
    },
    {
      "tag": "instagram",
      "patterns": [
        "Instagram",
        "Instagram page",
        "How can I follow you on Instagram?",
        "What updates are posted on instagram?"
      ],
    },

  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredIntents = intents.where((intent) {
      return intent['tag'].toLowerCase().contains(searchQuery.toLowerCase()) ||
          intent['patterns'].any((pattern) => (pattern as String).toLowerCase().contains(searchQuery.toLowerCase()));
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Help', style: TextStyle(fontFamily: 'Orbitronb')),
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
                  fontFamily: 'Quantico'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filteredIntents.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    title: SelectableText(filteredIntents[index]['tag'], style: TextStyle(fontFamily: 'Orbitronb')),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(filteredIntents[index]['patterns'].length, (i) {
                        return SelectableText('• ${filteredIntents[index]['patterns'][i]}',style: TextStyle(fontFamily: 'Quantico'));
                      }),
                    ),
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
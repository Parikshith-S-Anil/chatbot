import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/intent_service.dart';
import '../widgets/message_widget.dart';
import '../widgets/theme_toggle_button.dart';
import '../models/intent.dart';
import 'about_us.dart';
import 'help_page.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  late Future<List> futureIntents;
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool isDarkMode = true;

  @override
  void initState() {
    super.initState();
    futureIntents = IntentService().fetchIntents();
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('Could not launch $url');
    }
  }

  String _getResponse(String userInput, List intents) {
    for (var intent in intents) {
      for (var pattern in intent.patterns) {
        if (userInput.toLowerCase().contains(pattern.toLowerCase())) {
          return intent.responses.isNotEmpty ? intent.responses[0] : "I don't have a response for that.";
        }
      }
    }
    return "Sorry, I didn't understand that.";
  }

  Future<void> _sendMessage() async {
    final userInput = _controller.text;
    if (userInput.isNotEmpty) {
      setState(() {
        _messages.add({"user": userInput});
        _controller.clear();
      });

      try {
        final intents = await futureIntents;
        String response = _getResponse(userInput, intents);

        setState(() {
          _messages.add({"bot": response});
        });
      } catch (error) {
        setState(() {
          _messages.add({"bot": "Error fetching response. Please try again."});
        });
        print("Error: $error");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );

            },
            icon: Icon(Icons.menu_sharp)),
          
        
        title:Text('VEGA',style: TextStyle(fontFamily: 'source'),),
        backgroundColor: Colors.grey,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
            child: Text('Help'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(width: 5,),
          TextButton(
            onPressed: () {
              _launchURL('https://erp.vidyaacademy.ac.in/');
            },
            child: Text('ERP Login'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(width: 5,),
          ThemeToggleButton(
            isDarkMode: isDarkMode,
            onToggle: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
          ),
          SizedBox(width: 5,),
        ],
      ),
      body: Container(
        color: isDarkMode ? Color(0xFF121212) : Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16.0),
                      color: isDarkMode ? Color(0xFF121212) : Color(0xFFFFFFFF),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.asset('assets/logo3.json'),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Text(
                              "Vidya's Educational Guidance and \n           Assistant",
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                                fontFamily: 'Source',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      itemCount: _messages.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final message = _messages[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                          child: MessageWidget(
                            message: message.containsKey('user') ? message['user']! : message['bot']!,
                            isUser: message.containsKey('user'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontFamily: 'Source',
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(
                          fontFamily: 'Source',
                          color: isDarkMode ? Colors.white60 : Colors.black45,
                        ),
                        filled: true,
                        fillColor: isDarkMode ? Color(0xFF424242) : Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: _sendMessage,
                    icon: Icon(
                      Icons.send,
                      color: isDarkMode ? Colors.white : Color(0xFF007BFF),
                    ),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    splashRadius: 24, // Optional: adjust splash radius
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
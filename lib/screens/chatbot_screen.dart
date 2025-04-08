import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../services/intent_service.dart';
import '../widgets/message_widget.dart';
import '../widgets/theme_toggle_button.dart';
import 'about_us.dart';
import 'help_page.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen>
    with SingleTickerProviderStateMixin {
  late Future<List> futureIntents;
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool isDarkMode = true;
  bool showFirstText = true;
  bool showSecondText = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    futureIntents = IntentService().fetchIntents();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
          return intent.responses.isNotEmpty
              ? intent.responses[0]
              : "I don't have a response for that.";
        }
      }
    }
    return "Sorry, I didn't understand that.you can refer the help menu.";
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
    // Get device dimensions
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Dynamically adjust Lottie animation size
    double lottieSize = width * 0.6;
    if (width > 600) {
      lottieSize = width * 0.4; // For tablets or larger devices
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
          },
          icon: Icon(Icons.menu_sharp),
        ),
        title: Text('VEGA', style: TextStyle(fontFamily: 'Orbitronb')),
        backgroundColor: Colors.grey,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
            child: Text(
              'Help',
              style:
              TextStyle(fontFamily: 'Quantico', fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(width: 5),
          TextButton(
            onPressed: () {
              _launchURL('https://erp.vidyaacademy.ac.in/');
            },
            child: Text(
              'ERP',
              style:
              TextStyle(fontFamily: 'Quantico', fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(width: 5),
          ThemeToggleButton(
            isDarkMode: isDarkMode,
            onToggle: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
          ),
          SizedBox(width: 5),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: isDarkMode ? Color(0xFF121212) : Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.0),
                          color:
                          isDarkMode ? Color(0xFF121212) : Color(0xFFFFFFFF),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/logo3.json',
                                width: lottieSize,
                                height: lottieSize,
                                fit: BoxFit.contain,
                                onLoaded: (composition) {
                                  Future.delayed(composition.duration, () {
                                    setState(() {
                                      showSecondText = true;
                                    });
                                  });
                                },
                              ),
                              SizedBox(height: 10),
                              if (showFirstText)
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "Vidya's Educational Guidance and Assistant",
                                        textStyle: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontFamily: 'Quantico',
                                          fontWeight: FontWeight.bold,
                                        ),
                                        speed: Duration(milliseconds: 100),
                                      ),
                                    ],
                                    totalRepeatCount: 1,
                                    isRepeatingAnimation: false,
                                  ),
                                ),
                              if (showSecondText)
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "How can I help you?",
                                        textStyle: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontFamily: 'Quantico',
                                          fontWeight: FontWeight.bold,
                                        ),
                                        speed: Duration(milliseconds: 100),
                                      ),
                                    ],
                                    totalRepeatCount: 1,
                                    isRepeatingAnimation: true,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _messages.length,
                          itemBuilder: (context, index) {
                            final message = _messages[index];
                            return Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                              child: MessageWidget(
                                message: message.containsKey('user')
                                    ? message['user']!
                                    : message['bot']!,
                                isUser: message.containsKey('user'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
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
                            fontFamily: 'Quantico',
                            color: isDarkMode ? Colors.white60 : Colors.black45,
                          ),
                          filled: true,
                          fillColor:
                          isDarkMode ? Color(0xFF424242) : Colors.grey[300],
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
                      splashRadius: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

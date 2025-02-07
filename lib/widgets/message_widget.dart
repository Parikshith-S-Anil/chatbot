import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final bool isUser;

  const MessageWidget({Key? key, required this.message, this.isUser = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: isUser ? 16.0 : 0, right: isUser ? 0 : 16.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isUser ? Color(0xFF4CAF50) : Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: isUser ? Colors.green.withOpacity(0.3) : Colors.blue.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // User or Bot Icon
            CircleAvatar(
              backgroundColor: isUser ? Color(0xFF4CAF50) : Color(0xFF2A2A2A),
              child: Icon(
                isUser ? Icons.person : Icons.chat_bubble_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Flexible( // Prevent overflow by making the text flexible
              child: SelectableText.rich(
                 TextSpan(
                  children: _buildMessageText(message),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> _buildMessageText(String message) {
    final urlRegex = RegExp(r'\[(.*?)\]\((.*?)\)');
    final matches = urlRegex.allMatches(message);
    List<TextSpan> children = [];

    int lastMatchEnd = 0;
    for (var match in matches) {
      if (match.start > lastMatchEnd) {
        children.add(TextSpan(
          text: message.substring(lastMatchEnd, match.start),
          style: TextStyle(color: Colors.white, fontSize: 16),
        ));
      }

      children.add(TextSpan(
        text: match.group(1),
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
          fontSize: 16,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            final url = match.group(2);
            if (url != null) {
              _launchURL(url);
            }
          },
      ));

      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < message.length) {
      children.add(TextSpan(
        text: message.substring(lastMatchEnd),
        style: TextStyle(color: Colors.white, fontSize: 16),
      ));
    }

    return children;
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      print('Could not launch $url');
    }
  }
}

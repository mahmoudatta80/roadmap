import 'package:flutter/material.dart';

class Notices_page extends StatelessWidget {
  List<String> notifications = [
    'Warning, you have one day, you are allowed to be absent, if you exceed the number of 4 absences, you will be dismissed',
    'Warning, you have exceeded the number of available absences',
    'Warning, you have exceeded the number allowed for absence. You must go to the Office of Affairs to review your absence, otherwise you will be dismissed and thrown like a dog.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(10, 63, 79, 1.0),
        title: Text(
          "Notices",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildNotification(context, notifications[index]);
        },
      ),
    );
  }

  void _showNotificationContent(BuildContext context, String notification) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => NotificationContentScreen(
          content: notification,
        ),
      ),
    );
  }

  Widget _buildNotification(BuildContext context, String text) {
    // Truncate the notification text to display only the first four words
    List<String> words = text.split(' ');
    String truncatedText = words.take(4).join(' ');
    if (words.length > 4) {
      truncatedText += '...';
    }

    return ListTile(
      onTap: () {
        _showNotificationContent(context, text);
      },
      tileColor: Color.fromRGBO(237, 237, 237, 1.0),
      title: Text(
        truncatedText,
        style: TextStyle(
          color: Color.fromRGBO(10, 63, 79, 1.0),
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class NotificationContentScreen extends StatelessWidget {
  final String content;

  NotificationContentScreen({required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(10, 63, 79, 1.0),
        title: Text(
          "Notice Content",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: TextStyle(
            color: Color.fromRGBO(10, 63, 79, 1.0),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

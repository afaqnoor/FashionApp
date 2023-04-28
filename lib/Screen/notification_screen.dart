import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Notification',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 10, top: 5),
              child: Icon(Icons.menu)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 40),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/24.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'You like this dress design.\n1 hr ago',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/66.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'You dilike this dress design.\n5 min ago',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red,
                  child: Text(
                    'Stylist',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'You recieved a message from stylist.\n1 min ago',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red,
                  child: Text(
                    'Fashion\n   App',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Be ready our latest designs\npast Tommarow.\nyesterday, 7;30pm',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red,
                  child: Text(
                    'Fashion\n   App',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  // backgroundImage: AssetImage('assets/images/24.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Our latest design post go and\ncheck it out.\ntoday, 8;00am',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/24.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'You like this dress design.\n1 hr ago',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

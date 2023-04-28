import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
          child: Text(
            'Muhammad Waqas',
            style: TextStyle(
                fontFamily: 'Mirai Futura-Demo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 5),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage('assets/images/71.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 226, 226),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
                child: Text(
              'Today',
              style: TextStyle(color: Colors.red),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/71.jpg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 40,
                  width: 170,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                      child: Text(
                    'Hlo! Whats up?',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: Container(
              height: 40,
              width: 170,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Center(
                  child: Text(
                'Hlo ! Waqas',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Container(
              height: 40,
              width: 300,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Center(
                  child: Text(
                "i'm doing great! How are you today?",
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/71.jpg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 40,
                  width: 250,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                      child: Text(
                    'Hmm,everything is fine',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Container(
              height: 60,
              width: 250,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Center(
                  child: Text(
                'I like the design.\ncan you guide me more about it?',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 160.0),
            child: Container(
              height: 40,
              width: 200,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Center(
                  child: Text(
                "Offcourse Why not.",
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Container(
              height: 70,
              width: 300,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Center(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Your can check our stylist service where stylist guides you about trendy design",
                  style: TextStyle(color: Colors.black),
                ),
              )),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.emoji_emotions,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  'Type Of Message',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.attach_file_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

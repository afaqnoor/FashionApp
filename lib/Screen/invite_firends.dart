import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Components/drawerbutton.dart';
import 'package:fashion_app/Screen/home_screen.dart';
import 'package:flutter/material.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({super.key});

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  final GlobalKey _formkey1 = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const DrawerButton()));
              },
              child: const Icon(
                Icons.menu,
                size: 35,
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 50.0),
                child: Text(
                  'Invite Friends',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
            ),
            backgroundColor: Colors.red,
            elevation: 0,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Image.asset('assets/images/amico.png')),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Invite Your Friends\n  Reward Yourself',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Form(
                    key: _formkey1,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: emailController,
                      onSaved: (value) {
                        emailController.text;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 25,
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Email Address',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Phone Number';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '48W5V51',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Your Invite Code',
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23),
                ),
                ButtonComponents(
                    title: 'Send Invite',
                    Height: 60,
                    Width: 170,
                    Onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const HomeScreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

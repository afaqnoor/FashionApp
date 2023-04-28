import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Screen/login_screen.dart';
import 'package:fashion_app/Screen/sign_up.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sign_in extends StatelessWidget {
  const sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Fashion App ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kanit'),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Logo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Don’t stress about the dress\n  we’ll dress you to impress',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 100,
                ),
                ButtonComponents(
                    title: 'Sign In',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const SignIn()),
                          (route) => false);
                    }),
                ButtonComponents(
                    title: 'Sign Up',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const SignUp()),
                          (route) => false);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

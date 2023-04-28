import 'package:fashion_app/Components/bottom_navi.dart';
import 'package:fashion_app/Components/button_components.dart';
import 'package:flutter/material.dart';

class NewPasswordChnage extends StatefulWidget {
  const NewPasswordChnage({super.key});

  @override
  State<NewPasswordChnage> createState() => _NewPasswordChnageState();
}

class _NewPasswordChnageState extends State<NewPasswordChnage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 83, 72),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '      Your Password \n ',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    TextSpan(
                        text: 'Successfully Change',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ])),
                ),
              ),
              ButtonComponents(
                  title: 'Sign In',
                  Height: MediaQuery.of(context).size.height / 15,
                  Width: MediaQuery.of(context).size.width / 1.2,
                  Onpress: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const BottomNavigat()),
                        (route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

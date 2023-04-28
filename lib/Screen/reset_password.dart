// ignore_for_file: use_build_context_synchronously

import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var email = '';
  final auth = FirebaseAuth.instance;
  bool loading = false;
  String? errorMessage;
  final GlobalKey<FormState> _phonekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Resset Passoword',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      '     Reset Your Password\nBy Email Or Phone Number',
                      style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Form(
                      key: _phonekey,
                      child: TextFormField(
                        controller: phoneController,
                        onSaved: (value) {
                          phoneController.text;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            size: 25,
                            color: Colors.black,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Enter Your Phone Number',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _emailkey,
                      child: TextFormField(
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
                          hintText: 'Enter Your Email',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Email';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    ButtonComponents(
                        title: 'Continue',
                        Height: MediaQuery.of(context).size.height / 15,
                        Width: MediaQuery.of(context).size.width / 1.2,
                        Onpress: () {
                          loading = loading;
                          if (_emailkey.currentState!.validate()) {
                            setState(() {
                              loading = true;
                              email = emailController.text;
                            });
                            resetPossword();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const SignIn()),
                                (route) => false);
                          }
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resetPossword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Please Check Email',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'User-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'No user found that email',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )));
      }
    }
  }
}

import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Screen/newpass_chnage.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final GlobalKey _formkey = GlobalKey<FormState>();
  final GlobalKey _formkey1 = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmoassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'New Password ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Create New Passowrd',
                  style: TextStyle(
                      fontSize: 20,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formkey,
                  child: TextFormField(
                    controller: passwordController,
                    onSaved: (value) {
                      passwordController.text;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 25,
                        color: Colors.black,
                      ),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 207, 206, 206),
                      hintText: 'Enter Your Passord',
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
                        return 'Enter Eamil';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formkey1,
                  child: TextFormField(
                    controller: confirmoassController,
                    onSaved: (value) {
                      confirmoassController.text;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 25,
                        color: Colors.black,
                      ),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 207, 206, 206),
                      hintText: 'Confirm Your Passowrd',
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
                        return 'Enter Password';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                ButtonComponents(
                    title: 'Continue',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const NewPasswordChnage()),
                          (route) => false);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

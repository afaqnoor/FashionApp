import 'package:fashion_app/Components/button_components.dart';
import 'package:flutter/material.dart';

class EditBio extends StatefulWidget {
  const EditBio({super.key});

  @override
  State<EditBio> createState() => _EditBioState();
}

class _EditBioState extends State<EditBio> {
  final GlobalKey _formkey = GlobalKey<FormState>();
  final GlobalKey _formkey1 = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phonenoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 58.0),
            child: Text(
              'Bio',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: buttoncomponents(
                    title: 'Edit Bio', height: 48, Wid: 140, Onpress: () {}),
              ),
              const SizedBox(
                height: 35,
              ),
              Form(
                key: _formkey,
                child: TextFormField(
                  controller: usernameController,
                  onSaved: (value) {
                    usernameController.text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                    isDense: true,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 206, 206),
                    hintText: 'Enter Your Name',
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
                      return 'Enter User Name';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formkey1,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phonenoController,
                  onSaved: (value) {
                    phonenoController.text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
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
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                onSaved: (value) {
                  phonenoController.text;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
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
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                onSaved: (value) {
                  phonenoController.text;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Enter Your Password',
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
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                controller: confirmPassController,
                onSaved: (value) {
                  phonenoController.text;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Enter Confirm Passowrd',
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
                    return 'Enter Confirm Password';
                  } else {
                    return null;
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: ButtonComponents(
                    title: 'Signout', Height: 50, Width: 150, Onpress: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

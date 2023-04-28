import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Model/user_model.dart';
import 'package:fashion_app/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool loading = false;
  String? errorMessage;
  FirebaseAuth _auth = FirebaseAuth.instance;
  
  final GlobalKey<FormState> _usernamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phonekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _conpasskey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passController = TextEditingController();
  final phonenoController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();
  bool validation = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    height: 50,
                  ),
                  const Text(
                    'Sign Up ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Add Your Details To Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _usernamekey,
                    child: TextFormField(
                      controller: usernameController,
                      onSaved: (value) {
                        usernameController.text;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 25,
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
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
                    height: 20,
                  ),
                  Form(
                    key: _phonekey,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phonenoController,
                      onSaved: (value) {
                        phonenoController.text;
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
                        if (value == null || value.isEmpty) {
                          return 'Enter Phone Number';
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
                    key: _emailkey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
                    height: 20,
                  ),
                  Form(
                    key: _passkey,
                    child: TextFormField(
                      obscureText: true,
                      controller: passController,
                      onSaved: (value) {
                        passController.text;
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _conpasskey,
                    child: TextFormField(
                      obscureText: true,
                      controller: confirmPassController,
                      onSaved: (value) {
                        confirmPassController.text;
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
                          return 'Enter Confirm Password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RoundButton(
                    loading: loading,
                    title: 'Sign Up',
                    height: MediaQuery.of(context).size.height / 15,
                    Wid: MediaQuery.of(context).size.width / 2,
                    Onpress: () {
                      if (_emailkey.currentState!.validate()) {
                      } else if (_conpasskey.currentState!.validate()) {
                      } else if (_passkey.currentState!.validate()) {
                      } else if (_phonekey.currentState!.validate()) {
                      } else if (_usernamekey.currentState!.validate()) {}
                      setState(() {
                        loading = true;
                      });
                      signUp(emailController.text.toString(),
                          passController.text.toString());
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Alrady Have an Account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonComponents(
                      title: 'Sign In',
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 1.2,
                      Onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SignIn()));
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        setState(() {
          loading = false;
        });
        Fluttertoast.showToast(msg: e!.message);
      });
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "invalid-email":
          errorMessage = "Your email address appears to be malformed.";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "Not-Same-password":
          errorMessage = "Your password is not Same.";
          break;
        case "user-not-found":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests";
          break;
        case "operation-not-allowed":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      Fluttertoast.showToast(msg: errorMessage!);
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.username = usernameController.text;
    userModel.phonenumber = phonenoController.text;

    await firebaseFirestore
        .collection("UserData")
        .doc(user.uid)
        .set(userModel.toMap());
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => const SignIn()),
        (route) => false);
    setState(() {});
  }
}

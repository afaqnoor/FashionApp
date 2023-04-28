// ignore_for_file: file_names, must_be_immutable, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

class ButtonComponents extends StatelessWidget {
  final String title;
  // ignore: non_constant_identifier_names
  final double Height;
  // ignore: non_constant_identifier_names
  final double Width;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  ButtonComponents(
      {super.key,
      required this.title,
      // ignore: non_constant_identifier_names
      required this.Height,
      // ignore: non_constant_identifier_names
      required this.Width,
      //this.colors = Colors.yellow,
      this.colors = Colors.white,
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: Onpress,
        child: Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.3),
            color: colors,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Mirai Futura-Demo',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

class DetailsButton extends StatelessWidget {
  final String title;
  // ignore: non_constant_identifier_names
  final double Height;
  // ignore: non_constant_identifier_names
  final double Width;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  DetailsButton(
      {super.key,
      required this.title,
      // ignore: non_constant_identifier_names
      required this.Height,
      // ignore: non_constant_identifier_names
      required this.Width,
      //this.colors = Colors.yellow,
      this.colors = Colors.white,
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: Onpress,
        child: Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
            color: colors,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Mirai Futura-Demo',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class buttoncomponents extends StatelessWidget {
  final String title;
  final double height;
  // ignore: non_constant_identifier_names
  final double Wid;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  buttoncomponents({
    super.key,
    required this.title,
    required this.height,
    // ignore: non_constant_identifier_names
    required this.Wid,
    this.colors = Colors.black,
    // ignore: non_constant_identifier_names
    required this.Onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpress,
      child: Container(
        height: height,
        width: Wid,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2),
          color: colors,
          //border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 237, 236, 236),
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final String title;
  final double height;
  // ignore: non_constant_identifier_names
  final double Wid;
  final bool loading;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  RoundButton({
    super.key,
    this.loading = false,
    required this.title,
    required this.height,
    // ignore: non_constant_identifier_names
    required this.Wid,
    this.colors = Colors.black,
    // ignore: non_constant_identifier_names
    required this.Onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpress,
      child: Container(
        height: height,
        width: Wid,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2),
          color: colors,
          //border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: loading
                ? const CircularProgressIndicator()
                : Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 237, 236, 236),
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}

// ignore: must_be_immutable
class buttoncontainer extends StatelessWidget {
  final String title;
  final double height;
  // ignore: non_constant_identifier_names
  final double Wid;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  buttoncontainer(
      {super.key,
      required this.title,
      required this.height,
      // ignore: non_constant_identifier_names
      required this.Wid,
      this.colors = Colors.black,
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpress,
      child: Container(
        height: height,
        width: Wid,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2),
          color: colors,
          //border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 237, 236, 236),
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class Searchbutton extends StatelessWidget {
  final String title;
  final double height;
  // ignore: non_constant_identifier_names
  final double Wid;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  Searchbutton(
      {super.key,
      required this.title,
      required this.height,
      // ignore: non_constant_identifier_names
      required this.Wid,
      this.colors = const Color.fromARGB(255, 228, 226, 226),
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpress,
      child: Container(
        height: height,
        width: Wid,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2),
          color: colors,
          //border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Mirai Futura-Demo',
            fontSize: 15,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        )),
      ),
    );
  }
}

class RecentButton extends StatelessWidget {
  final String title;
  final double height;
  // ignore: non_constant_identifier_names
  final double Wid;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  RecentButton(
      {super.key,
      required this.title,
      required this.height,
      // ignore: non_constant_identifier_names
      required this.Wid,
      this.colors = const Color.fromARGB(255, 228, 226, 226),
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpress,
      child: Container(
        height: height,
        width: Wid,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2),
          color: colors,
          //border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Mirai Futura-Demo',
                fontSize: 15,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.cancel_outlined),
          ],
        ),
      ),
    );
  }
}

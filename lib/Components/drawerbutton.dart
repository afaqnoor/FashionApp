import 'package:fashion_app/Screen/invite_firends.dart';
import 'package:fashion_app/Screen/stylish.dart';
import 'package:fashion_app/Screen/wardrobe_screen.dart';
import 'package:fashion_app/hire_a_shop.dart';
import 'package:flutter/material.dart';

class DrawerButton extends StatefulWidget {
  const DrawerButton({super.key});

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text("Menu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 80,
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ),

            ListTile(
              title: const Text('Digital Wardrobe'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const WardrobeScreen()));
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ),
            ListTile(
              title: const Text('Hire A Shop'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const HireScreen()));
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ), //here is a divider
            ListTile(
              title: const Text('Stylist'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const StylishSreen()));
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ),
            ListTile(
              title: const Text('Invite Friends'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const InviteFriends()));
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 2,
            ),
            //rest of your items
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: use_build_context_synchronously

import 'package:fashion_app/Screen/invite_firends.dart';
import 'package:fashion_app/Screen/login_screen.dart';
import 'package:fashion_app/Screen/stylish.dart';
import 'package:fashion_app/Screen/wardrobe_screen.dart';
import 'package:fashion_app/hire_a_shop.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final List<String> genderItems = [
    'Your Circle',
    'Whole Circle',
  ];
  String? selectedValue;
  final List<String> sizeItems = [
    'Smaller',
    'Bigger',
  ];
  String? selectedValuesize;
  final List<String> shadeItems = [
    'Black',
    'Red',
    'Yellow',
    'Green',
    'Other',
  ];
  String? selectedValueshade;
  final List<String> lookItems = [
    // 'Top',
    // 'Bottom',
    // 'Shoes',
  ];
  String? selectedValuelook;
  final List<String> changeItems = [
    'Top',
    'Bottom',
    'Shoes',
  ];
  String? selectedValuechange;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text("Menu",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const StylishSreen()));
                },
              ),
              const Divider(
                color: Colors.red,
                thickness: 2,
              ),
              ListTile(
                title: const Text('Invite Friends'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const InviteFriends()));
                },
              ),
              const Divider(
                color: Colors.red,
                thickness: 2,
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (ctx) => const SignIn()),
                      (route) => false);
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
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Center(
            child: Text(
              'Abdul Raheem',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Mirai Futura-Demo'),
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
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              // child: Icon(Icons.dangerous_outlined),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.red, width: 2),
                color: const Color.fromARGB(255, 193, 193, 193),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: DropdownButtonFormField2(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Hit Up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  buttonHeight: 60,
                  buttonWidth: 150,
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Hitup.';
                    }
                    return null;
                  },
                  onChanged: (value) {},
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color.fromARGB(255, 193, 175, 5),
                indicatorWeight: 2,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      'Men',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Women',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  )
                ]),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35, bottom: 30),
                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Image.asset('assets/images/25.png'),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 308.0, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Formal Suit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A nice combination of light blue shirt \n with cream color blazzer and pant',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35, bottom: 30),
                      child: Container(
                        height: 400,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Image.asset('assets/images/24.png'),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 308.0, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Formal Suit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A nice pair of burgundy top blazr and \n pant with same color hand bag',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    openAlertBox();
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      'Nay',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                      child: Text(
                    'Yay',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: Container(
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 208, 208, 208),
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Text(
                          'Chose Option',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: DropdownButtonFormField2(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Try Different Size',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        buttonHeight: 15,
                        buttonWidth: 250,
                        buttonPadding:
                            const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: sizeItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select Hitup.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValuesize = value.toString();
                        },
                      ),
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: DropdownButtonFormField2(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Try Different Shade',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        buttonHeight: 15,
                        buttonWidth: 250,
                        buttonPadding:
                            const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: shadeItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select Hitup.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValueshade = value.toString();
                        },
                      ),
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: DropdownButtonFormField2(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Try Different Look',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        buttonHeight: 15,
                        buttonWidth: 250,
                        buttonPadding:
                            const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: lookItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select Hitup.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValuelook = value.toString();
                        },
                      ),
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: DropdownButtonFormField2(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        buttonHeight: 18,
                        buttonWidth: 300,
                        buttonPadding:
                            const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: changeItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select Hitup.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValuechange = value.toString();
                        },
                      ),
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 1.5,
                    ),
                    // ExpansionPanelList(
                    //   expansionCallback: (int index, bool isExpandes) {},
                    //   children: [
                    //     ExpansionPanel(
                    //         headerBuilder:
                    //             (BuildContext context, bool isExpanded) {
                    //           return const ListTile(
                    //             title: Text('Try Different Size'),
                    //           );
                    //         },
                    //         body: Column(
                    //           children: const [
                    //             Text(
                    //               'Smaller',
                    //               style: TextStyle(color: Colors.red),
                    //             ),
                    //             Divider(
                    //               thickness: 1.3,
                    //               color: Colors.red,
                    //             ),
                    //             Text(
                    //               'Bigger',
                    //               style: TextStyle(color: Colors.red),
                    //             ),
                    //           ],
                    //         ),
                    //         isExpanded: true)
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

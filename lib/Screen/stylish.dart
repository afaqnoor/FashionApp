import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Components/drawerbutton.dart';
import 'package:fashion_app/Screen/stylish_details.dart';
import 'package:flutter/material.dart';

class StylishSreen extends StatefulWidget {
  const StylishSreen({super.key});

  @override
  State<StylishSreen> createState() => _StylishSreenState();
}

class _StylishSreenState extends State<StylishSreen> {
  final List<String> itemsBudget = [
    'Mom To Be',
    'Vieled',
    'Cocktial',
    'Nightwear',
  ];
  String? selectedValueBudget;
  final List<String> itemsAge = [
    'Bronze',
    'Silver',
    'Gold',
    'Diamond',
  ];
  String? selectedValueAge;
  final List<String> itemsRating = [
    '5 Stars',
    '4 Stars',
    '3 Satrs',
    '1 OR 2 Stars',
  ];
  String? selectedValueRating;
  // ignore: non_constant_identifier_names
  final List<String> Hours = [
    '10+ Years',
    '6-10 Years',
    '3-5 Years',
    '1-2 Years',
  ];
  String? selectedHours;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const DrawerButton()));
              },
              child: const Icon(Icons.menu)),
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                'Stylists',
                style: TextStyle(
                    fontFamily: 'Mirai Futura-Demo',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 69, 67, 67),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: const Text(
                              'Style',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            items: itemsBudget
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValueBudget,
                            onChanged: (value) {
                              setState(() {
                                selectedValueBudget = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: const Text(
                              'Tier',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            items: itemsAge
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValueAge,
                            onChanged: (value) {
                              setState(() {
                                selectedValueAge = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: const Text(
                              'Rating',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            items: itemsRating
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValueRating,
                            onChanged: (value) {
                              setState(() {
                                selectedValueRating = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                        ),
                        DropdownButtonHideUnderline(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18),
                            child: DropdownButton2(
                              hint: const Text(
                                'Experience',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              items:
                                  Hours.map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )).toList(),
                              value: selectedHours,
                              onChanged: (value) {
                                setState(() {
                                  selectedHours = value as String;
                                });
                              },
                              buttonHeight: 40,
                              buttonWidth: 140,
                              itemHeight: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, top: 60),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.7,
                width: MediaQuery.of(context).size.height / 2.4,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 209, 209),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/71.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            'Abdul Raheem',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                width: 30,
                              ),
                              Text('Stylist'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Tier'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Rating'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Streetwear',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('silver',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('5.0', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        DetailsButton(
                            title: 'See Detail',
                            Height: 50,
                            Width: 200,
                            Onpress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const StylishDetail()));
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.7,
                width: MediaQuery.of(context).size.height / 2.4,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 209, 209),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/66.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            'Rizwan Shah',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                width: 30,
                              ),
                              Text('Stylist'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Tier'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Rating'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Streetwear',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('silver',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('5.0', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: DetailsButton(
                              title: 'See Detail',
                              Height: 50,
                              Width: 200,
                              Onpress: () {}),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.7,
                width: MediaQuery.of(context).size.height / 2.4,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 209, 209),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/69.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            'Osama Khan',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                width: 30,
                              ),
                              Text('Stylist'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Tier'),
                              SizedBox(
                                width: 30,
                              ),
                              Text('Rating'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Streetwear',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('silver',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(
                              width: 20,
                            ),
                            Text('5.0', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: DetailsButton(
                              title: 'See Detail',
                              Height: 50,
                              Width: 200,
                              Onpress: () {}),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

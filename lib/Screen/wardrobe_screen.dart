import 'package:fashion_app/Components/button_components.dart';
import 'package:fashion_app/Components/drawerbutton.dart';
import 'package:flutter/material.dart';

class WardrobeScreen extends StatefulWidget {
  const WardrobeScreen({super.key});

  @override
  State<WardrobeScreen> createState() => _WardrobeScreenState();
}

class _WardrobeScreenState extends State<WardrobeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
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
                'Wardrobe',
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
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorWeight: 3,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      'Men',
                      style: TextStyle(
                          fontFamily: 'Mirai Futura-Demo',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Women',
                      style: TextStyle(
                          fontFamily: 'Mirai Futura-Demo',
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
                        left: 20.0,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                                Image.asset('assets/images/full-body-male.png'),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 17,
                                  width:
                                      MediaQuery.of(context).size.width / 3.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Collection',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Wearing',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 17,
                                  width:
                                      MediaQuery.of(context).size.width / 3.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Search',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/shirt.png'),
                                      const Text('Formal Shirt'),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/pent.png'),
                                        const Text('Formal pants'),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/shoes.png'),
                                      const Text('Formal Shoes'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttoncontainer(
                                    title: 'Change Top',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Change Bottom',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Change Shoes',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                                'assets/images/full-body-female.png'),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 17,
                                  width:
                                      MediaQuery.of(context).size.width / 3.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Collection',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Wearing',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 17,
                                  width:
                                      MediaQuery.of(context).size.width / 3.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Search',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/ladiesshirt.png'),
                                      const Text('Formal Shirt'),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            'assets/images/ladiespent.png'),
                                        const Text('Jeans pants'),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  width:
                                      MediaQuery.of(context).size.width / 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 212, 208, 208),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/sport.png'),
                                      const Text('Casual Shoes'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttoncontainer(
                                    title: 'Change Top',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Change Bottom',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                buttoncontainer(
                                    title: 'Change Shoes',
                                    height: 50,
                                    Wid: 130,
                                    Onpress: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fashion_app/Components/button_components.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey _formkey1 = GlobalKey<FormState>();
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
          child: Text(
            'Search',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                key: _formkey1,
                child: TextFormField(
                  controller: searchController,
                  onSaved: (value) {
                    searchController.text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                    isDense: true,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 206, 206),
                    hintText: 'Search Your Favorite Brand',
                    hintStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
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
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Suggestion',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Top Brands',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Searchbutton(
                    title: 'ZARA', height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(
                    title: 'GUCCI', height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(title: 'H&M', height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(title: 'H&M', height: 40, Wid: 80, Onpress: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Searchbutton(
                    title: 'PRADA', height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(
                    title: "LEVI'S", height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(
                    title: 'NEXT', height: 40, Wid: 80, Onpress: () {}),
                Searchbutton(title: 'C&A', height: 40, Wid: 80, Onpress: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Searchbutton(
                    title: 'TJ MAXX', height: 40, Wid: 120, Onpress: () {}),
                Searchbutton(
                    title: 'LOUIS VUITTON',
                    height: 40,
                    Wid: 120,
                    Onpress: () {}),
                Searchbutton(
                    title: 'CALVIN KLEIN',
                    height: 40,
                    Wid: 120,
                    Onpress: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recent Search',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Clear',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RecentButton(
                    title: 'Zara jeand', height: 40, Wid: 130, Onpress: () {}),
                RecentButton(
                    title: 'Levis pants', height: 40, Wid: 130, Onpress: () {}),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 108.0),
              child: RecentButton(
                  title: 'TJ maxx shirt', height: 40, Wid: 130, Onpress: () {}),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RecentButton(
                    title: 'Gucci Top', height: 40, Wid: 130, Onpress: () {}),
                RecentButton(
                    title: 'louis vuittan dress',
                    height: 40,
                    Wid: 200,
                    Onpress: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

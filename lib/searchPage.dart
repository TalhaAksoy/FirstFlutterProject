// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget searchBar() {
    return (Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          labelText: "Search",
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 3,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.lightBlue)),
        ),
      ),
    ));
  }

  Widget myDivider(final double sizedBoxSize, final double paddingSize) {
    return (Column(
      children: [
        SizedBox(height: sizedBoxSize),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingSize),
          child: Divider(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: sizedBoxSize),
      ],
    ));
  }

  Widget searchListElement(
      final String imageAddress, final String userName, final String tagName) {
    return (Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(imageAddress),
                ),
                SizedBox(width: 10),
                Text(userName),
                SizedBox(width: 5),
                Icon(
                  Icons.circle,
                  size: 4,
                ),
                SizedBox(width: 5),
                Text(
                  tagName,
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(Icons.favorite_border_outlined)
          ],
        ),
        myDivider(5, 0),
      ],
    ));
  }

  Widget searchList() {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
              searchListElement(
                  "images/anime_girl_pp.gif", "Saksoy", "AlhazenTR"),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 10),
          searchBar(),
          myDivider(5, 20),
          searchList()
        ]),
      ),
    );
  }
}

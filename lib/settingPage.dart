// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Text("General Settings"),
            ],
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(
                Icons.abc_sharp), // Burda icon fln gozukuyo mesela adamlarda
            title: Text("Setting - 1"),
          ),
          Divider(),
        ],
      ),
    );
  }
}

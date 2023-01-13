// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  Widget postTextArea() {
    return (Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        maxLines: 10,
        decoration: InputDecoration(
          labelText: "Post Text",
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

  Widget tagsTextArea() {
    return (Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            labelText: "Write #TAGS",
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 3, color: Colors.lightBlue))),
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

  Widget sendButton() {
    return (Column(
      children: [
        SizedBox(height: 10),
        DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        right: 75, left: 75, top: 15, bottom: 15)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 63, 62, 62)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
                onPressed: () {},
                child: const Text(
                  "Send Post",
                  style: TextStyle(color: Color(0xffffffff), fontSize: 16),
                ))),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              postTextArea(),
              myDivider(5, 20),
              tagsTextArea(),
              sendButton()
            ],
          ),
        ),
      ),
    );
  }
}

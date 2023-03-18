import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //using controller to get what the user entered
  final _textController = TextEditingController();

  //store user text input into a varaible
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //display text
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Center(
                  child: Text(
                    userPost,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),

            //text input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'What\'s your name?',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    // clear what's currently in the textfield
                    _textController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),

            //read textfield
            MaterialButton(
              onPressed: () {
                //update user input to text variable
                userPost = _textController.text;
                _textController.clear();
              },
              color: Colors.blue,
              child: Text(
                'POST',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

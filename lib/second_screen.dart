import 'package:flutter/material.dart';
import 'package:navigator_app/third_screen.dart';

class SecondScreen extends StatefulWidget {
  final String? name;
  final int? number;
  const SecondScreen({Key? key, this.name, this.number}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen ${widget.name} ... ${widget.number}"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context, "Second Screen");
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ThirdScreen(),
              //   ),
              // );
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

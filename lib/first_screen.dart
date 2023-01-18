import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double text = MediaQuery.textScaleFactorOf(context);
    double height = size.height;
    double width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        children: [
          Container(
            height: height / 10,
            width: height / 10,
            color: Colors.red,
            margin: EdgeInsets.all(20).copyWith(left: 30),
          ),
          Text(
            "1234567890",
            style: TextStyle(
              fontSize: text * 10,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          dynamic data = await Navigator.pushNamed(context, "SecondScreen");

          debugPrint("Data ----------->> $data");
        },
        tooltip: "Next",
        backgroundColor: Colors.green,
        splashColor: Colors.blueGrey,
        foregroundColor: Colors.deepPurple,
        hoverColor: Colors.pink,
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            children: const [
              Icon(Icons.navigate_next_outlined, size: 30),
              Icon(Icons.navigate_next_outlined, size: 30),
              Icon(Icons.navigate_next_outlined, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}

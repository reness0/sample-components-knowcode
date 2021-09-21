import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int checkRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample components KnowCode"),
          backgroundColor: Color.fromRGBO(133, 36, 209, 1.0),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(height: 800),

          // EditText
          Positioned(
              left: 20,
              top: 20,
              child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    key: Key('edit-text'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type your text",
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ))),

          Positioned(
            left: 20,
            top: 100,
            child: Container(
                // You have to set the size, otherwise it'll break
                height: 60,
                width: 400,
                child: RadioListTile(
                  key: Key("radio"),
                  tileColor: Color.fromRGBO(255, 255, 255, 1),
                  selectedTileColor: Color.fromRGBO(133, 36, 209, 1.0),
                  title: Text("Title",
                      style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          color: Color.fromRGBO(0, 0, 0, 1))),
                  subtitle: Text("Subtitle",
                      style: TextStyle(
                          fontSize: 10,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          color: Color.fromRGBO(0, 0, 0, 1))),
                  value: 1,
                  onChanged: (newValue) {
                    setState(() {
                      checkRadio = newValue;
                    });
                  },
                  groupValue: checkRadio,
                  activeColor: Color.fromRGBO(133, 36, 209, 1.0),
                )),
          ),
        ])));
  }
}

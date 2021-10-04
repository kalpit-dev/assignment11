import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grouped Button Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Normal Usage of menu button",
              style: TextStyle(color: Colors.black54),
            ),
            DropdownButton(
                value: _value,

                items: [
                  DropdownMenuItem(
                    child: Text("First Item"),
                    value: 1,

                  ),
                  DropdownMenuItem(
                    child: Text("Second Item"),
                    value: 2,
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value as int;
                  });
                },
                hint: Text("Select item")),
          ],
        ),
      ),
    );
  }
}

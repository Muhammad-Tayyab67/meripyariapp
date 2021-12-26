import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "meriapp",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              color: Colors.black26,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}

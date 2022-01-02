import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "meriapp",
      home: Homepage(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  TextEditingController _newtext = TextEditingController();
  var oldtext = "Change kro Muje";
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meri Pyari App"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/11.jpg",
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                  SizedBox(height: 20),
                  Text(
                    oldtext,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        controller: _newtext,
                        decoration: InputDecoration(
                          hintText: "Enter some thing",
                          labelText: "Enter Here",
                          border: OutlineInputBorder(),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Tayyab"),
              accountEmail: Text("mt6780175@gmial.com"),
              decoration: BoxDecoration(color: Colors.black26),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
            ),
            ListTile(
              title: Text("Acount"),
              subtitle: Text("edit acount"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("edit mail"),
              leading: Icon(Icons.mail),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              title: Text("Pass"),
              subtitle: Text("edit password"),
              leading: Icon(Icons.password_rounded),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          oldtext = _newtext.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  Color appBarAndButton = Colors.blue;

  var mode = 'Light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarAndButton,
        title: Text(
          "$mode Mode",
        ),
      ),
      body: Center(
        child: Text(
          "$mode Mode",
          style: TextStyle(color: textColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appBarAndButton,
        onPressed: () {
          setState(() {
            backgroundColor = (backgroundColor == Colors.white)
                ? Color.fromARGB(255, 46, 46, 46)
                : Colors.white;
            textColor = (textColor == Colors.white)
                ? Color.fromARGB(255, 8, 8, 8)
                : Colors.white;
            appBarAndButton = (appBarAndButton == Colors.blue)
                ? Color.fromARGB(255, 8, 8, 8)
                : Colors.blue;
            mode = (mode == "Dark") ? "Light" : "Dark";
          });
        },
        child: Icon(Icons.build),
      ),
    );
  }
}

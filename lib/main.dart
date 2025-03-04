import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "TODO List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: const BuildUI(),
      ),
    );
  }
}

class BuildUI extends StatelessWidget {
  const BuildUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text("Buy groceries"),
            trailing: Checkbox(
              value: false,
              onChanged: null, // Checkbox is static and non-interactive
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Complete Flutter project"),
            trailing: Checkbox(
              value: true,
              onChanged: null,
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Read a book"),
            trailing: Checkbox(
              value: false,
              onChanged: null,
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  bool showExtraContent = false; // Track whether to show text and image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404: sanity not found"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(fontSize: 30),
            ),
            if (showExtraContent) ...[
              SizedBox(height: 20),
              Text("Delulu level:"),
              SizedBox(height: 10),
              Image.asset(
                'assets/leon.jpeg', // Make sure the image path is correct
                height: 200,
              ),
            ]
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            showExtraContent = true;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('Text Button is pressed.');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Hello World !',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          },
          child: Text(
            'Show me',
            style: TextStyle(fontSize: 18.0),
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          // 컨테이너 > 마진 > 패딩 순으로 좁혀감
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
        ),
      ),
    );
  }
}

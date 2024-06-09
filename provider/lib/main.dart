import 'package:flutter/material.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '-name: Dog name',
          style: TextStyle(
            color: Colors.white
          ),
          ),
        backgroundColor: Colors.blue,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '- name: Dog name',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0,),
            BreadAndAge(),
          ],
        ),
      ),
      );
  }
}



class BreadAndAge extends StatelessWidget {
  const BreadAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            '- bread: Dog breed',
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        SizedBox(height: 10.0,),
        Age(),
      ],
    );
  }
}


class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '-age: your age',
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

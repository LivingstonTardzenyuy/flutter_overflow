import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Provider Overflow',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: double.infinity,
    );
  }
}

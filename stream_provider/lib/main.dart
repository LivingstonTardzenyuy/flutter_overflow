import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}


String now() => DateTime.now().toIso8601String();

@immutable
class Seconds{
  final String value;
  Seconds() : value = now();
}

@immutable
class Minutes{
  final String value;
  Minutes() : value = now();
}

Stream<String> newStream(Duration duration) =>
    Stream.periodic(duration, (_) => now());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}

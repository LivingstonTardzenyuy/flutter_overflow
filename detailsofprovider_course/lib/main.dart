import 'package:detailsofprovider_course/controller/con.dart';
import 'package:detailsofprovider_course/screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        ObjectProvider();
      },
      child: MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage()
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('HomePage', style: TextStyle(fontSize: 30, color: Colors.purple),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            Row(
              children: [
                Expanded(child: CheapWidget()),
                // const SizedBox(width: 20,),
                Expanded(child: ExpensiveWidget()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controllers/breadCrum.dart';

import 'models/models.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BreadCrumbProvider(),  // Corrected this line
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
        routes: {
          '/new': (context) => const NewPage(),  // Ensure the route '/new' is defined and points to a valid widget
        },
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // context.select<BreadCrumbProvider>((value) => null);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home Page', style: TextStyle(color: Colors.yellow, fontSize: 30),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('hellow world'),
          TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/new');
              },
              child: const Text('Add new Crumb')
          ),

          const SizedBox(height: 50,),
          TextButton(
              onPressed: (){
                final provider = context.read<BreadCrumbProvider>();
                provider.reset();
              },
              child: const Text('Reset', style: TextStyle(color: Colors.red),)
          ),
        ],
      )
    );
  }
}


class BreadCrumbsWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;
  const BreadCrumbsWidget({super.key, required this.breadCrumbs});

  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      children: breadCrumbs.map((breadCrumb){
        return Text(
          breadCrumb.title,
          style: TextStyle(
            color:  breadCrumb.isActive ? Colors.blue : Colors.black
          ),
        );
      }).toList(),
    );
  }
}



class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: const Center(
        child: Text('This is a new page'),
      ),
    );
  }
}

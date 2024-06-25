import 'package:detailsofprovider_course/controller/con.dart';
import 'package:detailsofprovider_course/model/base_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
        (provider) => provider.expensiveObject,
    );
    return Container(
        height: 100,
        color: Colors.blue,
        child: Column(
          children: [
            const Text('Expensive Widget'),
            const Text('Last Update'),
            Text(expensiveObject.lastUpdate)
          ],
        ),
    );
  }
}


class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapWidget = context.select<ObjectProvider, CheapObject>(
            (provider) => provider.cheapObject);

    return Container(
      height: 100,
      color: Colors.red,
      child: Column(
        children: [
          const Text('Cheap Object'),
          const Text('Last update'),
          Text(cheapWidget.lastUpdate),
        ],
      ),
    );
  }
}




class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Container(
      height: 100,
      color: Colors.purple,
      child: Column(
        children: [
          const Text('Expensive Widget Widget'),
          const Text('Last Updated'),
          Text(provider.id),
        ],
      ),
    );
  }
}





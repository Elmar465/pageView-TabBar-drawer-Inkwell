import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});
  static const routeName = '/pageStorage';

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
  
          ListView.builder(
            key: const PageStorageKey<String>('page'),
            itemCount: 40,
            itemBuilder: (context, index) => ListTile(
              title: Text('Item  ${index +1}')
            )
          ),
        ],
      ),
    );
  }
}
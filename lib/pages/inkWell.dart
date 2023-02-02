import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  static const routeName = '/secondPage';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          splashColor: Colors.brown,
          highlightColor: Colors.blue,
          // radius: 10.0,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.transparent,
              // ignore: prefer_const_constructors
              child: Center(
                // ignore: prefer_const_constructors
                child: Text(
                  "Button",
                  style: TextStyle(fontSize: 30.0),
                ),
              )),
        ),
      ),
    );
  }
}

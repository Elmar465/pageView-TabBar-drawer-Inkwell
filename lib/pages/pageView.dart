// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});
  static const routeName = '/pageView';

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          child: PageView(
            controller: PageController(
              viewportFraction: 0.5
            ),
            // scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // ignore: prefer_const_constructors
              Paginal(Colors.blue),
              // ignore: prefer_const_constructors
              Paginal(Colors.red),
              // ignore: prefer_const_constructors
              Paginal(Colors.green),
        
            ],
          ),
        ),
      )
    );
  }
}

class Paginal extends StatelessWidget {

  final Color color;
  const Paginal( this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
      color: this.color,
      borderRadius: BorderRadius.all(Radius.circular(30))
      ),
    );
  }
}
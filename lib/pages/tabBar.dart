// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});
  static const routeName = '/tabBar';

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage>
  with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState(){
    super.initState();

    controller =  TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {
        
      });
    });
  }
  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Tab ${controller.index +1 }'),
            centerTitle: true,
            // ignore: prefer_const_constructors
            bottom: TabBar(
              controller: controller,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                // ignore: prefer_const_constructors
                Tab(
                  text: 'Text 1',
                  icon: Icon(Icons.home),
                ),
                Tab(text: 'Text 2', icon: Icon(Icons.star)),
                Tab(text: 'Text 3', icon: Icon(Icons.person))
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          body: TabBarView(
            controller: controller,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Center(
                // ignore: prefer_const_constructors
                child: Text('Tab 1 Content'),
              ),
              // ignore: prefer_const_constructors
              Center(
                // ignore: prefer_const_constructors
                child: Text('Tab2 Content'),
              ),
              Center(
                child: Text('Tab 3 Content'),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add, size: 32,),
            onPressed: () {
              controller.animateTo(0);
            },
          ),
          );
    
  }
}

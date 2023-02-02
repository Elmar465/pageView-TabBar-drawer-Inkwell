import 'package:flutter/material.dart';
import 'package:test12/pages/drawerInk.dart';
import 'package:test12/pages/inkWell.dart';
import 'package:test12/pages/pageStorage.dart';
import 'package:test12/pages/pageView.dart';
import 'package:test12/pages/tabBar.dart';

main(){
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        MainPage.rouiName : (context) => MainPage(),
        SecondPage.routeName : (context) => SecondPage(),
        ThirdPage.routeName : (context) => ThirdPage(),
        FourthPage.routeName : (context) =>FourthPage(),
        FifthPage.routeName : (context) =>FifthPage(),
      },

    );
  }
}
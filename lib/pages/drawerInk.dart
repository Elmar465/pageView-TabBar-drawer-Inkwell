import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test12/pages/inkWell.dart';
import 'package:test12/pages/pageStorage.dart';
import 'package:test12/pages/pageView.dart';
import 'package:test12/pages/tabBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const rouiName = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      drawer: NavigationDrawer(),      
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            builderHeader(context),
            builderMenuItems(context)

          ],
        ),
      ),
    );
    
  }
  
  Widget builderHeader(BuildContext context) => Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top
    ),
  );
  
 Widget  builderMenuItems(BuildContext context) => Container(
  padding: EdgeInsets.all(20),
   child: Wrap(
    runSpacing: 16.0,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined, color: Colors.black,),
          title: const Text("Home"),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MainPage()));
          }
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border, color: Colors.black,),
          title: const Text("Favorites"),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ThirdPage()));

          }
        ),
        ListTile(
          leading: const Icon(Icons.workspaces_outline, color: Colors.black,),
          title: const Text("Work Flow"),
          onTap: () {
            Navigator.pushNamed(context, SecondPage.routeName);
          }
        ),
        ListTile(
          leading: const Icon(Icons.update, color: Colors.black,),
          title: const Text("Updates"),
          onTap: () {
            Navigator.pushNamed(context, FourthPage.routeName);

          }
        ),
        const Divider(color:Colors.black54,),
        ListTile(
          leading: const Icon(Icons.account_tree_outlined, color: Colors.black,),
          title: const Text("Plugins"),
          onTap: () {
            Navigator.pushNamed(context, FifthPage.routeName);

          }
        ),
        ListTile(
          leading: const Icon(Icons.notifications_outlined, color: Colors.black,),
          title: const Text("Notifications"),
          onTap: () {
          }
        ),
      ],
    ),
 );
}
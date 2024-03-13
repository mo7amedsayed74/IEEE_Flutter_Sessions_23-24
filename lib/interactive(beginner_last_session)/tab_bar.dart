import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      animationDuration: const Duration(milliseconds: 1000),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            dividerColor: Colors.grey,
            //padding: EdgeInsets.all(0),
            //isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'home', //  text||child must be null
                //iconMargin: EdgeInsets.zero,
              ),
              Tab(
                icon: Icon(Icons.add_alert),
                text: 'alert',
              ),
              Icon(Icons.add)
              /*
              Tab(
                icon: Icon(Icons.person),
                text: 'person',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.add_alert),
                text: 'alert',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'person',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.add_alert),
                text: 'alert',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'person',
              ),
              */
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('home'),),
            Center(child: Text('alert'),),
            Center(child: Text('person'),),
          ],
        ),
      ),
    );
  }
}

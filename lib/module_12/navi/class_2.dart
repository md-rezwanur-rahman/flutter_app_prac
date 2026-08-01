import 'package:flutter/material.dart';
class Module12Class3 extends StatelessWidget {
  const Module12Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.black,
                  borderRadius: BorderRadius.circular(05)
            ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'Fav',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'settings',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Text('Home'),
          Text('Fav'),
          Text('Settings'),
        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  Text('Rayjan',style: TextStyle(fontSize: 20),),
                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text('face'),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  Text('Rayjan',style: TextStyle(fontSize: 20),),
                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text('face'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

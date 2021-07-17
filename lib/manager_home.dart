import 'package:flutter/material.dart';
class ManagerHome extends StatelessWidget {
  const ManagerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""
            "Welcome Manager"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Text(
                      'Welcome Manager',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(onPressed: (){

                    }, icon: Icon(
                        Icons.edit
                    ),
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [Image.asset(
                        "assets/pro.png",
                        width: 100,
                      ),],
                    ),
                  ]
              ),
            ),
            ListTile(
              leading: Icon(
                  Icons.home
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: Icon(
            //       Icons.person_add
            //   ),
            //   title: Text('Add Users'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: Icon(
                  Icons.add
              ),
              title: Text('Assign Works'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: Icon(
            //       Icons.edit
            //   ),
            //   title: Text('Edit Users'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: Icon(
                  Icons.edit
              ),
              title: Text('Edit Assigned Works'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:facility_management_system/add_user.dart';
import 'package:facility_management_system/add_works.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {

  AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        // leading: IconButton(
        //   icon: Icon(Icons.apps),
        //   onPressed: (){
        //     Scaffold.of(context).openDrawer();
        //   },
        // ),
        centerTitle: true,
        title: Text(
            "Welcome Admin!"
        ),
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
                    'Welcome Admin',
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
            ListTile(
              leading: Icon(
                Icons.person_add
              ),
              title: Text('Add Users'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddUser()),
                );

              },
            ),
            ListTile(
              leading: Icon(
                Icons.add
              ),
              title: Text('Add Works'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddWorks()),
                );

              },
            ),
            ListTile(
              leading: Icon(
                Icons.edit
              ),
              title: Text('Edit Users'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.edit
              ),
              title: Text('Edit Works'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 20,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                  ),
                  height: 200,
                  width: 200,
                  // color: Colors.black,
                  child: Stack(
                    children: <Widget>[
                      Image.asset("assets/fms.png")
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black
                  ),
                  height: 200,
                  width: 200,
                  // color: Colors.black,
                  child: Stack(
                    children: <Widget>[
                      Image.asset("assets/fms.png")
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black54
                  ),
                  height: 200,
                  width: 200,
                  // color: Colors.black,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      // Image.asset("assets/fms.png")
                      Icon(Icons.person,
                      color: Colors.white,
                      size: 50,),
                      Text("Managers",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black
                  ),
                  height: 200,
                  width: 200,
                  // color: Colors.black,
                  child: Stack(
                    children: [
                      Image.asset("assets/fms.png"),
                      Text("Hello World",
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
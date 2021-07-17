import 'package:facility_management_system/adminhome.dart';
import 'package:facility_management_system/forget_passcode.dart';
import 'package:facility_management_system/manager_home.dart';
import 'package:facility_management_system/worker_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Please Select';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              // AppBar(
              //   title: Image.asset(
              //       "assets/fms.png",
              //       width: 100,
              //   ),
              //   centerTitle: true,
              //   backgroundColor: Colors.black,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  child:Image.asset(
                      "assets/fms.png",
                      width: 250,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      labelText: 'User-ID',
                      hintText: 'Enter UserID',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: DropdownButton(
                        value: dropdownValue,style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),      onChanged: (String? newValue) {

                      },
                        items: <String>['Please Select', 'Admin', 'Manager', 'Employee']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      ),
                    )
                  )
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)
                        ),
                        primary: Colors.deepPurple
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminHome()),
                      );
                    },
                    child: Text(
                      "Login as Admin"
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)
                        ),
                        primary: Colors.deepPurple
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManagerHome()),
                      );
                    },
                    child: Text(
                        "Login as Manager"
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)
                        ),
                        primary: Colors.deepPurple
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkerHome()),
                      );
                    },
                    child: Text(
                        "Login as Employee"
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ForgetPasscode()),
                          );
                        },
                        child: Text(
                            " Forget Password ? Click here to reset.",
                        ),
                      ),
                    )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

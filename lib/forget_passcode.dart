import 'package:facility_management_system/passcode_otp.dart';
import 'package:flutter/material.dart';

class ForgetPasscode extends StatelessWidget {
  const ForgetPasscode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""
            "ForgetPasscode"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(""
                  "Please Enter your Phone Number / UserID"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children:<Widget>[
                    TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      labelText: 'Phone Number',
                      hintText: 'Phone Number',
                    ),
                  ),
                    Text(""
                        "OR"),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                        ),
                        labelText: 'User-ID',
                        hintText: 'Username',
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton
                        (
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)
                            ),
                            primary: Colors.deepPurple
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OTP()),
                          );
                        },
                        child: Text(""
                          "Generate OTP"),
                      ),
                    )
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

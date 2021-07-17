import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""
            "Forget Passcode"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(""
                  "Please enter the OTP sent your Registered Mobile Number"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
              child: Container(
                // color: Colors.black54,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children:<Widget>[
                   Container(
                     width: MediaQuery.of(context).size.width,
                     child: (
                         OTPTextField(
                           length: 4,
                           width: MediaQuery.of(context).size.width,
                           fieldWidth: 50,
                           style: TextStyle(
                               fontSize: 17
                           ),
                           textFieldAlignment: MainAxisAlignment.spaceAround,
                           fieldStyle: FieldStyle.box,
                         ))
                   ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton
                        (
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
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

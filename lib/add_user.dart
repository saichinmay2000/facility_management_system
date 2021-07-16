import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _onChanged;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""
            "Add User"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            FormBuilder(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    readOnly: true,
                    name: "eid",
                    decoration: InputDecoration(
                      labelText:
                      'Employee ID',
                      prefixText: "EMP123"
                    ),
                  ),
                  FormBuilderTextField(
                      name: "ename",
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText:
                      'Enter Employee Name',
                    ),
                  ),
                  FormBuilderDateTimePicker(
                      inputType: InputType.date,
                      name: "edob",
                    decoration: InputDecoration(
                      labelText: "Employee DOB"
                    ),

                  ),
                  FormBuilderTextField(
                    name: "eemail",
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText:
                      'Enter Employee Email',
                    ),
                  ),
                  FormBuilderTextField(
                    name: "ephone",
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText:
                      'Enter Employee Phone',
                    ),
                  ),
                  FormBuilderTextField(
                    name: "eaddress",
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      labelText:
                      'Enter Employee Address',
                    ),
                  ),
                  FormBuilderChoiceChip(
                    name: 'erole',
                    decoration: InputDecoration(
                      labelText: 'Select Role',
                    ),
                    options: [
                      FormBuilderFieldOption(
                          value: 'Admin', child: Text('Admin',style: TextStyle(color: Colors.deepPurple),)),
                      FormBuilderFieldOption(
                          value: 'Manager', child: Text('Manager',style: TextStyle(color: Colors.deepPurple))),
                      FormBuilderFieldOption(
                          value: 'Worker', child: Text('Worker',style: TextStyle(color: Colors.deepPurple))),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
                      ),
                        onPressed: (){

                        },
                        child: Text("Add User")
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

DateFormat(String s) {
}

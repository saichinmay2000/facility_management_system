import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddWorks extends StatelessWidget {
  const AddWorks ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _onChanged;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""
            "Add Works"),
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
                    name: "wid",
                    decoration: InputDecoration(
                        labelText:
                        'Work ID',
                        prefixText: "WRK123"
                    ),
                  ),
                  FormBuilderTextField(
                    name: "wname",
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText:
                      'Work Name',
                    ),
                  ),
                  FormBuilderDateTimePicker(
                    inputType: InputType.date,
                    name: "wdate",
                    decoration: InputDecoration(
                        labelText: "Work Date"
                    ),

                  ),
                  FormBuilderDateTimePicker(
                    inputType: InputType.time,
                    name: "wtime",
                    decoration: InputDecoration(
                        labelText: "Work Time"
                    ),
                  ),
                  FormBuilderChoiceChip(
                    name: 'erole',
                    decoration: InputDecoration(
                      labelText: 'Assign Manager',
                    ),
                    options: [
                      FormBuilderFieldOption(
                          value: 'Manager 1', child: Text('Manager 1',style: TextStyle(color: Colors.deepPurple),)),
                      FormBuilderFieldOption(
                          value: 'Manager 2', child: Text('Manager 2',style: TextStyle(color: Colors.deepPurple))),
                      FormBuilderFieldOption(
                          value: 'Manager 3', child: Text('Manager 3',style: TextStyle(color: Colors.deepPurple))),
                      FormBuilderFieldOption(
                          value: 'Manager 4', child: Text('Manager 4',style: TextStyle(color: Colors.deepPurple))),
                      ],

                  ),

                  SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)
                            ),
                            primary: Colors.deepPurple
                        ),
                        onPressed: (){

                        },
                        child: Text("Add Work")
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

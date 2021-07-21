import 'package:flutter/material.dart';

class AssignWork extends StatefulWidget {
  const AssignWork({Key? key}) : super(key: key);

  @override
  _AssignWorkState createState() => _AssignWorkState();
}

class _AssignWorkState extends State<AssignWork> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Please Select';
    var a = 60.0;
    return Scaffold(
      floatingActionButton: new FloatingActionButton.extended(
          onPressed: (){},
          backgroundColor: Colors.deepPurple,
          label: Text(""
              "Add Work"),
          icon:Icon(Icons.add),
      ),
      // FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      // ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""
            "Assign Works"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Assigned Task -  ',
                        style: TextStyle(color: Colors.black,fontSize: 25),
                      ),
                      TextSpan(
                        text: 'Room - 602',
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                    ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              // color: Colors.white,
                            ),
                            height: a,
                            width: 200,
                            // color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                ""
                                    "Air Conditioner"
                              ),
                            )
                          ),
                          Container(
                            height: a,
                            width: 200,
                            // color: Colors.black,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              style: const TextStyle(color: Colors.deepPurple),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Television"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Geyser"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Lighting"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Room Cleaning"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Switch Repair"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Laundry Change"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                  // color: Colors.white,
                                ),
                                height: a,
                                width: 200,
                                // color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      ""
                                          "Water Service"
                                  ),
                                )
                            ),
                            Container(
                              height: a,
                              width: 200,
                              // color: Colors.black,
                              child: DropdownButton(
                                value: dropdownValue,
                                style: const TextStyle(color: Colors.deepPurple),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Please Select', 'Worker 1', 'Worker 2', 'Worker 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

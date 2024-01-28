import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isOn = false;

  var sex = 'male';
  var selected = 'Flutter';
  var isChecked = false;
  final dropdownList = <String>['Flutter', 'Dart', 'Java', 'Python'];
  TextEditingController textController = TextEditingController(text: 'Sabrina');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Basic - Form',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text Field
            TextField(
              maxLength: 20,
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                icon: Icon(
                  Icons.person,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: "What's your name ?",
              ),
              onChanged: (value) {},
            ),
            // Dropdown
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Your Favorite Language:'),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton(
                  value: selected,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 20,
                  style: TextStyle(color: Colors.blue[600]),
                  underline: Container(
                    decoration: const BoxDecoration(),
                  ),
                  items: dropdownList
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (String? val) {
                    setState(
                      () {
                        if (val != null) selected = val;
                      },
                    );
                  },
                )
              ],
            ),
            // Switch
            Row(
              children: [
                const Text('Connect Instagram'),
                const SizedBox(
                  width: 8,
                ),
                Switch(
                  value: isOn,
                  onChanged: (bool? val) {
                    if (val != null) {
                      setState(() {
                        isOn = val;
                      });
                    }
                  },
                )
              ],
            ),
            // Radio
            Row(
              children: [
                const Text('Gender'),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 'male',
                        groupValue: sex,
                        onChanged: (
                          String? val,
                        ) {
                          setState(
                            () {
                              if (val != null) {
                                sex = val;
                              }
                            },
                          );
                        })
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'female',
                      groupValue: sex,
                      onChanged: (String? val) {
                        setState(
                          () {
                            if (val != null) {
                              sex = val;
                            }
                          },
                        );
                      },
                    )
                  ],
                ),
                // Checkbox
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.blue,
                  onChanged: (val) {
                    setState(
                      () {
                        if (val != null) {
                          isChecked = val;
                        }
                      },
                    );
                  },
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Agree Term & Conditions',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            InkWell(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                debugPrint("pickedDate : $pickedDate");
              },
              child: TextFormField(
                initialValue: '2022-08-01',
                maxLength: 20,
                enabled: false,
                decoration: const InputDecoration(
                    labelText: 'Birth Date',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    )),
                    suffixIcon: Icon(Icons.date_range),
                    helperText: "What's your birth date?"),
                onChanged: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

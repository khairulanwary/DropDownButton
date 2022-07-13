import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create DropDownButton In Flutter',
      home: ShowDropDownButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShowDropDownButton extends StatefulWidget {
  const ShowDropDownButton({Key? key}) : super(key: key);

  @override
  State<ShowDropDownButton> createState() => _ShowDropDownButtonState();
}

class _ShowDropDownButtonState extends State<ShowDropDownButton> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Create DropDownButton In Flutter',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Number :',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
            DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(
                    color: Color.fromARGB(255, 35, 81, 231), fontSize: 20.0),
                underline: Container(
                  height: 3,
                  color: Color.fromARGB(255, 35, 81, 231),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['one', 'Two', 'Three', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList())
          ],
        ),
      ),
    );
  }
}

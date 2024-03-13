import 'package:flutter/material.dart';

class Tmp extends StatefulWidget {
  const Tmp({super.key});

  @override
  State<Tmp> createState() => _TmpState();
}

class _TmpState extends State<Tmp> {
  int _currentIndex = 0;
  List<String> list = [
    'one is selected',
    'two is selected',
    'three is selected'
  ];
  List<Widget> pages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('alert'),
    ),
    const Center(
      child: Text('person'),
    ),
    const Center(
      child: Text('person'),
    ),
  ];
String var1='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DropdownMenu(
          hintText: 'type...',

          initialSelection: list[0],
          onSelected: (value){
            setState(() {
              print(list[int.parse(value.toString())]);
            });
          },
          dropdownMenuEntries: const [
            DropdownMenuEntry(
              label: 'one',
              value: 0,
            ),
            DropdownMenuEntry(
              label: 'two',
              value: 1,
            ),
            DropdownMenuEntry(
              label: 'three',
              value: 2,
            ),
          ],
        )],
      ),
    );
  }
}

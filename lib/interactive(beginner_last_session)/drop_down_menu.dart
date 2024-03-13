import 'package:flutter/material.dart';

class DropDownMenuExample extends StatelessWidget {
  const DropDownMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DropdownMenu(
        //hintText: 'type...',
        //initialSelection: 'one',
        //trailingIcon: Icon(Icons.add),
        //selectedTrailingIcon: Icon(Icons.ac_unit),
        //onSelected: (value){ setState >> myIdentifier = value },
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: 'one',
            label: 'one',
          ),
          DropdownMenuEntry(
            value: 'two',
            label: 'two',
          ),
          DropdownMenuEntry(
            value: 'three',
            label: 'three',
          ),
        ],
      ),
    );
  }
}

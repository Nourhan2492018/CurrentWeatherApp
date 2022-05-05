import 'package:flutter/material.dart';
class DropDown extends StatefulWidget
{

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Egypt',
    'Landon',
    'Cairo',
    'Marco',
    'Landon',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(

      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}

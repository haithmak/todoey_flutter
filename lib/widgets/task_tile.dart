import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {

  bool ? isChecked = true;
  String ? name ;
  final toggleCheckedState;
  TaskItem({this.name , this.isChecked , this.toggleCheckedState}) ;

  void onCheckBoxToggled(bool ? checked) {
    isChecked = checked!;
   /* setState(() {

    });
    */
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged: toggleCheckedState,
    ),);
      // trailing:  TaskCheckbox(
      //   checkedState: isChecked,
      //   toggleCheckedState: onCheckBoxToggled,
      // ),);

  }
}

class TaskCheckbox extends StatelessWidget {
  bool? checkedState = false;
  final toggleCheckedState;
//  ValueChanged<bool?> ? toggleCheckedState ;
  TaskCheckbox({this.checkedState, this.toggleCheckedState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkedState,
      onChanged: toggleCheckedState,
    );
  }
}

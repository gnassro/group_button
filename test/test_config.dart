import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class GroupButtonTestWidget extends StatefulWidget {
  const GroupButtonTestWidget({Key? key}) : super(key: key);
  @override
  _GroupButtonTestWidgetState createState() => _GroupButtonTestWidgetState();
}

class _GroupButtonTestWidgetState extends State<GroupButtonTestWidget> {
  List<String> buttons = ['12:00', '13:00', '14:00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GroupButton(
        buttons: buttons,
        controller: GroupButtonController(disabledIndexes: const [2]),
        onSelected: (index, _) {
          setState(() => buttons.removeAt(index));
        },
      ),
    );
  }
}

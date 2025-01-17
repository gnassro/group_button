import 'package:example/examples/customizable_example/customizable_example.dart';
import 'package:example/examples/extended_example/example.dart';
import 'package:example/examples/styles_example/example.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import 'examples/button_builder_example/example.dart';

/// You can use [GroupButtonExtendedExample]
/// to check all package [GroupingType]'s in one place

/// /// You can use [StylesExample]
/// to check all package style's configuration

/// You can use [CustomizableExample]
/// to check package power

/// You can use [ButtonBuilderExample]
/// to check how button builder works
///
/// In this example GroupButton work as
/// common flutter [Checkbox] and [Radio] buttons

void main() {
  runApp(CommonExample());
}

class CommonExample extends StatelessWidget {
  CommonExample({Key? key}) : super(key: key);

  final controller = GroupButtonController(
    selectedIndex: 20,
    selectedIndexes: [0, 1, 2, 3, 4],
    disabledIndexes: [10, 12, 13, 14, 15, 23],
    onDisablePressed: (i) => print('Button #$i is disabled'),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GroupButton(
            controller: controller,
            isRadio: false,
            buttons: List.generate(25, (i) => '${i + 1}'),
            maxSelected: 10,
            onSelected: (i, selected) => debugPrint('Button #$i $selected'),
          ),
        ),
      ),
    );
  }
}

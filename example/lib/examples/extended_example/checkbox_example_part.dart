part of 'example.dart';

Widget _buildCheckboxExample(GroupingType groupingType, {Axis? direction}) {
  return ScrollIjector(
    groupingType: groupingType,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: GroupButton(
          isRadio: false,
          controller: GroupButtonController(
            selectedIndexes: const [2, 3],
            onDisablePressed: (i) => debugPrint('Disable Button #$i pressed'),
          ),
          options: GroupButtonOptions(
            groupingType: groupingType,
            direction: direction,
            selectedShadow: const [],
            unselectedShadow: const [],
            unselectedBorderColor: Colors.green,
            unselectedTextStyle: const TextStyle(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          onSelected: (index, isSelected) => debugPrint(
            '$index button is ${isSelected ? 'selected' : 'unselected'}',
          ),
          buttons: const [
            'Burger',
            'Sandwiches',
            'Salad',
            'Carbonara',
            'Meat',
            'French fries',
            'Carbonated beverage'
          ],
        ),
      ),
    ),
  );
}

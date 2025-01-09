import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xtyle/main.dart';

class CategoryBadgeComponent extends StatelessWidget {
  bool isSelected;
  String category;
  VoidCallback onPressed;
  CategoryBadgeComponent({Key? key, required this.category, required this.isSelected, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      color: WidgetStateProperty.all(isSelected? XColors.obsuccess.shade600 : XColors.obsuccess.shade200),
      label: Text(
        category,
        style: TypographyBuilder().textXs.setFontWeight(FontWeight.w600).setTextColor(isSelected ? XColors.obsuccess.shade100 : XColors.obsuccess.shade800).build(),
      ),
      side: BorderSide.none,
      onPressed: () {
        onPressed();
      },
    );
  }
}


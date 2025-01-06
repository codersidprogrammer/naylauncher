import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naylauncher/shared/components/circular-outlined-button.component.dart';
import 'package:xtyle/main.dart';

import 'appbar.widget.controller.dart';
class AppbarWidget extends GetWidget<AppbarWidgetController> {
  final List<Widget> actionWidgets;
  const AppbarWidget({
    super.key,
    required this.actionWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: XSpacers.base,
            ),
            CircularOutlinedButton(
              title: 'Apps',
              icon: Icons.dashboard, // Icon for the button
              size: XSpacers.spacer7,        // Diameter of the circle
              borderColor: XColors.obneutral.shade600,
              iconColor: Colors.white,
              autoFocus: true,
              onPressed: () {
                print("Button Pressed Apps");
              },
            ),
            CircularOutlinedButton(
              title: 'Add',
              icon: Icons.add, // Icon for the button
              size: XSpacers.spacer7,        // Diameter of the circle
              borderColor: XColors.obneutral.shade600,
              iconColor: Colors.white,
              onPressed: () {
                print("Button Pressed Add");
              },
            ),
            Flexible(
              child: InkWell(
                onTap: () async {

                },
                child: Center(
                  child: Image.asset(
                    'assets/images/4.png', // Path to the image asset
                    width: 72,               // Optional: Adjust image width
                    height: 72,              // Optional: Adjust image height
                    fit: BoxFit.fill,        // Optional: Adjust image fit
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        ...actionWidgets,
        CircularOutlinedButton(
          title: 'Settings',
          icon: Icons.settings, // Icon for the button
          size: XSpacers.spacer7,        // Diameter of the circle
          borderColor: XColors.obneutral.shade600,
          iconColor: Colors.white,
          onPressed: () {
            print("Button Pressed Settings");
          },
        ),
        CircularOutlinedButton(
          title: 'Shop',
          icon: Icons.shopping_cart_rounded, // Icon for the button
          size: XSpacers.spacer7,        // Diameter of the circle
          borderColor: XColors.obneutral.shade600,
          iconColor: Colors.white,
          onPressed: () {
            print("Button Pressed Shop");
          },
        ),
        const SizedBox(
          width: XSpacers.base,
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 72,
    );
  }
}

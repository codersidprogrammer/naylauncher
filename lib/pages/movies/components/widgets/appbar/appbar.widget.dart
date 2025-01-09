import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:naylauncher/pages/movies/components/widgets/appbar/appbar.widget.controller.dart';
import 'package:naylauncher/shared/components/circular-outlined-button.component.dart';
import 'package:xtyle/main.dart';


class AppbarWidget extends GetWidget<MoviesAppbarWidgetController> {
  final List<Widget> actionWidgets;
  static const platform = MethodChannel('com.example.naylauncher');

  const AppbarWidget({
    super.key,
    required this.actionWidgets,
  });

  Future<void> openAndroidSettings() async {
    try {
      // Call the native method
      await platform.invokeMethod('openSettings');
    } on PlatformException catch (e) {
      print("Failed to open settings: ${e.message}");
    }
  }

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
              title: 'Back',
              icon: Icons.arrow_back_rounded, // Icon for the button
              size: XSpacers.spacer7,        // Diameter of the circle
              borderColor: XColors.obneutral.shade600,
              iconColor: Colors.white,
              onPressed: () {
                print("Button Pressed Add");
                Get.offAndToNamed('/home');
              },
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
                openAndroidSettings();
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
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 72,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naylauncher/pages/movies/components/widgets/appbar/appbar.widget.dart';
import 'package:naylauncher/pages/movies/controllers/ui-movies.controller.dart';
import 'package:naylauncher/shared/components/circular-outlined-button.component.dart';
import 'package:xtyle/dist/main.dart';
import 'package:xtyle/main.dart';

class DetailView extends GetView<UIMoviesController> {
  DetailView({Key? key}) : super(key: key);

  final _fcNode = FocusNode();
  final _fccNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size.flipped;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppbarWidget(actionWidgets: []),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: XColors.obnavy.shade700,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_waves_2.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Color overlay
          Positioned.fill(
            child: Container(
              color: XColors.obnavy.shade700.withOpacity(0.8), // Adjust opacity for the overlay
            ),
          ),
          SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                return;
              },
              child: KeyboardListener(
                focusNode: _fcNode,
                child: Focus(
                  focusNode: _fccNode,
                  child: SizedBox(
                    height: size.height,
                    child: Container(
                      height: size.width,
                      width: size.height,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [XColors.obnavy, Colors.black54],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                            child: Image.asset(
                              'assets/images/mulan.jpg', // Replace with your image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: XSpacers.base,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Mulan 2020',
                                  style: TypographyBuilder().textXl4.textObwhite50.setFontWeight(FontWeight.w900).build(),
                                ),
                                const SizedBox(height: XSpacers.base,),
                                Row(
                                  children: [
                                    CircularOutlinedButton(
                                      title: 'Play',
                                      icon: Icons.play_arrow, // Icon for the button
                                      size: XSpacers.spacer7,        // Diameter of the circle
                                      borderColor: XColors.obneutral.shade600,
                                      iconColor: Colors.white,
                                      autoFocus: true,
                                      onPressed: () {
                                        Get.toNamed('/movies/play');
                                        print("Button Pressed Apps");
                                      },
                                    ),
                                    CircularOutlinedButton(
                                      title: 'Likes',
                                      icon: Icons.thumb_up, // Icon for the button
                                      size: XSpacers.spacer7,        // Diameter of the circle
                                      borderColor: XColors.obneutral.shade600,
                                      iconColor: Colors.white,
                                      onPressed: () {
                                        print("Button Pressed Apps");
                                      },
                                    ),
                                    CircularOutlinedButton(
                                      title: 'Add to list',
                                      icon: Icons.bookmark_add, // Icon for the button
                                      size: XSpacers.spacer7,        // Diameter of the circle
                                      borderColor: XColors.obneutral.shade600,
                                      iconColor: Colors.white,
                                      onPressed: () {
                                        print("Button Pressed Apps");
                                      },
                                    ),
                                  ],
                                ).paddingOnly(top: XSpacers.base, bottom: XSpacers.base),
                                const SizedBox(height: XSpacers.base,),

                                Text(
                                  'Overview',
                                  style: TypographyBuilder().textXl.textObwhite200.setFontWeight(FontWeight.w900).build(),
                                ),
                                Text(
                                  'When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. She is spirited, determined and quick on her feet. Disguised as a man by the name of Hua Jun, she is tested every step of the way and must harness her innermost strength and embrace her true potential.',
                                  style: TypographyBuilder().textBase.textObwhite50.setFontWeight(FontWeight.normal).build(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 6,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

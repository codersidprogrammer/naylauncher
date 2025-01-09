import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naylauncher/pages/movies/components/widgets/appbar/appbar.widget.dart';
import 'package:naylauncher/pages/movies/controllers/ui-movies.controller.dart';
import 'package:naylauncher/shared/components/category-badge.component.dart';
import 'package:naylauncher/shared/components/circular-outlined-button.component.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:xtyle/dist/main.dart';
import 'package:xtyle/main.dart';

class DetailView extends GetView<UIMoviesController> {
  DetailView({Key? key}) : super(key: key);

  final _fcNode = FocusNode();
  final _fccNode = FocusNode();

  Widget _getProgressIndicator(double progress) {
    return Container(
      width: XSpacers.spacer20,
      height: XSpacers.spacer20,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: XColors.obsuccess, shape: BoxShape.circle),
      child: Stack(alignment: Alignment.center, children: [
        Positioned.fill(
          child: CircularProgressIndicator(
            value: progress * 10,
            strokeWidth: 4.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
        Text(
          "${(progress * 10).toInt()}%",
          style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size.flipped;

    return Obx(() => Scaffold(
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
                child: Image.network(
                  controller.movieBackdropUrl.value, // Replace with your image asset path
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
                        child: Skeletonizer(
                          enabled: controller.isLoading.value,
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
                                  child: Image.network(
                                    controller.moviePosterUrl.value, // Replace with your image asset path
                                    fit: BoxFit.cover,
                                  ),
                                ).paddingSymmetric(horizontal: XSpacers.base, vertical: XSpacers.base),
                                const SizedBox(
                                  width: XSpacers.base,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.movieDetailData.value.title} (${controller.movieDetailData.value.releaseDate.substring(0, 4)})',
                                        style: TypographyBuilder().textXl4.textObwhite50.setFontWeight(FontWeight.w900).build(),
                                      ),
                                      const SizedBox(
                                        height: XSpacers.base,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CategoryBadgeComponent(category: 'Animation', isSelected: false, onPressed: () {}).paddingAll(XSpacers.spacer2),
                                          CategoryBadgeComponent(category: 'Adventure', isSelected: false, onPressed: () {}).paddingAll(XSpacers.spacer2),
                                        ],
                                      ),
                                      // _getProgressIndicator(controller.movieDetailData.value.voteAverage),
                                      Row(
                                        children: [
                                          CircularOutlinedButton(
                                            title: 'Play',
                                            icon: Icons.play_arrow, // Icon for the button
                                            size: XSpacers.spacer7, // Diameter of the circle
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
                                            size: XSpacers.spacer7, // Diameter of the circle
                                            borderColor: XColors.obneutral.shade600,
                                            iconColor: Colors.white,
                                            onPressed: () {
                                              print("Button Pressed Apps");
                                            },
                                          ),
                                          CircularOutlinedButton(
                                            title: 'Add to list',
                                            icon: Icons.bookmark_add, // Icon for the button
                                            size: XSpacers.spacer7, // Diameter of the circle
                                            borderColor: XColors.obneutral.shade600,
                                            iconColor: Colors.white,
                                            onPressed: () {
                                              print("Button Pressed Apps");
                                            },
                                          ),
                                        ],
                                      ).paddingOnly(top: XSpacers.base, bottom: XSpacers.base),
                                      const SizedBox(
                                        height: XSpacers.base,
                                      ),
                                      Text(
                                        'Overview',
                                        style: TypographyBuilder().textXl.textObwhite200.setFontWeight(FontWeight.w900).build(),
                                      ),
                                      Text(
                                        controller.movieDetailData.value.overview,
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
              ),
            ],
          ),
        ));
  }
}

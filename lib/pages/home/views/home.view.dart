import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:image_card/image_card.dart';
import 'package:naylauncher/pages/home/components/widgets/appbar/appbar.widget.dart';
import 'package:naylauncher/pages/home/controllers/ui-home.controller.dart';
import 'package:xtyle/dist/main.dart';
import 'package:xtyle/main.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Text(
                  "Gallery",
                  style: TypographyBuilder().textObneutral50.textXl2.setFontWeight(FontWeight.bold).build(),
                ).paddingOnly(left: 24),
                SizedBox(
                  height: 60,
                ),
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${imgList.indexOf(item)} image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

class HomeView extends GetView<UIHomeController> {
  HomeView({Key? key}) : super(key: key);

  Widget dummy(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          Text(
            title,
            style: TypographyBuilder().textObneutral50.textXl3.setFontWeight(FontWeight.bold).build(),
          ),
          const SizedBox(height: 16), // Space between the title and GridView
          // GridView wrapped in an Expanded widget to manage layout
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(10, (index) {
                // Generate a random color
                final randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                return InkWell(
                  onTap: () {
                    Get.toNamed('/movies');
                  },
                  child: Card(
                    color: randomColor, // Use the generated color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners for the card
                    ),
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: const TextStyle(
                          color: Colors.white, // Ensure the text is visible on colorful backgrounds
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget dummyStaggered(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          Text(
            title,
            style: TypographyBuilder().textObneutral50.textXl3.setFontWeight(FontWeight.bold).build(),
          ),
          const SizedBox(height: 16), // Space between the title and GridView
          // GridView wrapped in an Expanded widget to manage layout
          Expanded(
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                  Size size = MediaQuery.of(context).size;
                  return TransparentImageCard(
                    width: size.width,
                    height: size.height,
                    imageProvider: NetworkImage('https://image.tmdb.org/t/p/original${controller.dataResponse.value.results.first.backdropPath}'),
                    tags: [],
                    title: Text(
                      'Card Name',
                      style: TypographyBuilder().textSm.setFontWeight(FontWeight.bold).textObwhite50.build(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    description: Text(
                      'widget.data.description',
                      style: TypographyBuilder().textXs.textObblack100.build(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ).paddingAll(8);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget onboard() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Title Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome on board',
                style: TypographyBuilder().textObneutral50.textXl5.setFontWeight(FontWeight.bold).build(),
              ),
              Text(
                'PT Kereta Api Indonesia',
                style: TypographyBuilder().textObneutral50.textBase.setFontWeight(FontWeight.w500).build(),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

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
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 2.0,
                        viewportFraction: 0.95,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        onboard(),
                        dummy('Movies'),
                        dummy('Musics'),
                        dummy('Magazines'),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title Text
                              Text(
                                'TMDB',
                                style: TypographyBuilder().textObneutral50.textXl3.setFontWeight(FontWeight.bold).build(),
                              ),
                              const SizedBox(height: 16), // Space between the title and GridView
                              // GridView wrapped in an Expanded widget to manage layout
                              Expanded(
                                child: GridView.custom(
                                  gridDelegate: SliverQuiltedGridDelegate(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 4,
                                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                                    pattern: [
                                      QuiltedGridTile(2, 2),
                                      QuiltedGridTile(1, 1),
                                      QuiltedGridTile(1, 1),
                                      QuiltedGridTile(1, 2),
                                    ],
                                  ),
                                  childrenDelegate: SliverChildBuilderDelegate(
                                    (context, index) {
                                      final randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                                      Size size = MediaQuery.of(context).size;

                                      return Obx(() {
                                        final data = controller.dataResponse.value.results[index];
                                        return InkWell(
                                          focusColor: XColors.obsuccess,
                                          onTap: () async {
                                            print('Object ${data.title}');
                                          },
                                          child: InkWell(
                                            onTap: () {
                                              Get.toNamed('/movies');
                                            },
                                            child: TransparentImageCard(
                                              width: size.width,
                                              height: size.height,
                                              imageProvider: NetworkImage('https://image.tmdb.org/t/p/original${data.backdropPath}'),
                                              tags: [],
                                              title: Text(
                                                data.title,
                                                style: TypographyBuilder().textSm.setFontWeight(FontWeight.bold).textObwhite50.build(),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              description: Text(
                                                data.overview,
                                                style: TypographyBuilder().textXs.textObblack100.build(),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ).paddingAll(8),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

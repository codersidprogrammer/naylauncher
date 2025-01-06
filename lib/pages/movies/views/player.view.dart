import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naylauncher/pages/movies/components/widgets/appbar/appbar.widget.dart';
import 'package:naylauncher/pages/movies/controllers/ui-movies.controller.dart';
import 'package:naylauncher/shared/components/circular-outlined-button.component.dart';
import 'package:xtyle/dist/main.dart';
import 'package:xtyle/main.dart';

class PlayerView extends GetView<UIMoviesController> {
  PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size.flipped;

    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              'https://docs.evostream.com/sample_content/assets/sintel1m720p.mp4',
            ),
          ),
        ],
      ),
    );
  }
}

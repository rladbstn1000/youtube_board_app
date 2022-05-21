import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_board_app/src/components/custom_appbar.dart';
import 'package:youtube_board_app/src/components/video_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/detail/235987");
                  },
                  child: const VideoWidget(),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

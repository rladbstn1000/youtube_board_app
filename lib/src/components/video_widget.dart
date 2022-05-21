import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Text(
                    "유튜브 제목",
                    maxLines: 2,
                  )),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: const Icon(
                      Icons.more_vert,
                      size: 28,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "유튜버 이름",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(" · "),
                  Text(
                    "시청자 0000명",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(" · "),
                  Text(
                    "날짜",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _thumbnail(),
        _simpleDetailInfo(),
      ],
    );
  }
}

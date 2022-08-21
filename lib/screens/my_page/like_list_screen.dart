import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/lecture_details.dart';
import '../../widgets/appbar.dart';

class LikeListScreen extends StatefulWidget {
  static const routeName = '/like-list';

  @override
  State<LikeListScreen> createState() => _LikeListScreenState();
}

class _LikeListScreenState extends State<LikeListScreen> {
  @override
  Widget build(BuildContext context) {
    final likeLectures = context
        .watch<LectureDetails>()
        .state
        .lectureDetails
        .where((lectureDetail) => lectureDetail.like == true)
        .toList();
    return Scaffold(
      appBar: appBarHome(context),
      body: ListView.builder(
        itemCount: likeLectures.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Row(
                      children: [
                        Image.network(
                          likeLectures[index].photos[0],
                          height: 110,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.only(left: 20, top: 2),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            likeLectures[index].title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 35),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: SizedBox()),
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<LectureDetails>()
                                        .toggleLecture(
                                            likeLectures[index].classId);
                                  },
                                  child: Icon(
                                    likeLectures[index].like
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

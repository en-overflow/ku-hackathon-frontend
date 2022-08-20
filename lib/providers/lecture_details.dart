import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/lecture_detail.dart';

class LectureDetailsState extends Equatable {
  final List<LectureDetail> lectureDetails;
  LectureDetailsState({
    required this.lectureDetails,
  });

  factory LectureDetailsState.initial() {
    return LectureDetailsState(lectureDetails: DUMMY_LECTURE_DETAIL);
  }

  @override
  List<Object> get props => [lectureDetails];

  @override
  bool get stringify => true;

  LectureDetailsState copyWith({
    List<LectureDetail>? lectureDetails,
  }) {
    return LectureDetailsState(
      lectureDetails: lectureDetails ?? this.lectureDetails,
    );
  }
}

class LectureDetails with ChangeNotifier {
  LectureDetailsState _state = LectureDetailsState.initial();
  LectureDetailsState get state => _state;

  void toggleLecture(String classId) {
    final newlectureDetails =
        _state.lectureDetails.map((LectureDetail lectureDetail) {
      if (lectureDetail.classId == classId) {
        return LectureDetail(
          classId: classId,
          time: lectureDetail.time,
          title: lectureDetail.title,
          description: lectureDetail.description,
          price: lectureDetail.price,
          like: !lectureDetail.like,
          category: lectureDetail.category,
          instructorId: lectureDetail.instructorId,
          instructorName: lectureDetail.instructorName,
          instructorPhone: lectureDetail.instructorPhone,
          instructorPhoto: lectureDetail.instructorPhoto,
          level: lectureDetail.level,
          location: lectureDetail.location,
          status: lectureDetail.status,
          photos: lectureDetail.photos,
          totalCount: lectureDetail.totalCount,
          userId: lectureDetail.userId,
          userMoney: lectureDetail.userMoney,
        );
      }
      return lectureDetail;
    }).toList();

    _state = _state.copyWith(lectureDetails: newlectureDetails);
    notifyListeners();
  }

  // void registerLecture(String classId) {
  //   final newlectureDetails =
  //       _state.lectureDetails.map((LectureDetail lectureDetail) {
  //     if (lectureDetail.classId == classId) {
  //       return LectureDetail(
  //         classId: classId,
  //         time: lectureDetail.time,
  //         title: lectureDetail.title,
  //         description: lectureDetail.description,
  //         price: lectureDetail.price,
  //         like: lectureDetail.like,
  //         category: lectureDetail.category,
  //         instructorId: lectureDetail.instructorId,
  //         instructorName: lectureDetail.instructorName,
  //         instructorPhone: lectureDetail.instructorPhone,
  //         instructorPhoto: lectureDetail.instructorPhoto,
  //         level: lectureDetail.level,
  //         location: lectureDetail.location,
  //         status: lectureDetail.status,
  //         photos: lectureDetail.photos,
  //         totalCount: lectureDetail.totalCount,
  //       );
  //     }
  //     return lectureDetail;
  //   }).toList();

  //   _state = _state.copyWith(lectureDetails: newlectureDetails);
  //   notifyListeners();
  // }
}

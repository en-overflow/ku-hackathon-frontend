import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.freezed.dart';
part 'lecture.g.dart';

@freezed
class Lecture with _$Lecture {
  factory Lecture({
    required String classId,
    required List<String> photos,
    required String time, //모임 날짜
    required String title,
    required String description, //설명
    required String location,
    required String level,
    required String price,
    required bool like, //관심 여부
    required int totalCount,
    required String category,
    required String status, //모집중, 모집완료,(마감)
    required String instructorId,
    required String instructorPhoto,
    required String instructorName,
    required String instructorPhone,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) =>
      _$LectureFromJson(json);
}

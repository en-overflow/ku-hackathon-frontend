import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture_detail.freezed.dart';
part 'lecture_detail.g.dart';

@freezed
class LectureDetail with _$LectureDetail {
  factory LectureDetail({
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
    required String userId,
    required String userMoney,

    //인기강좌 리스트 필요
  }) = _LectureDetail;

  factory LectureDetail.fromJson(Map<String, dynamic> json) =>
      _$LectureDetailFromJson(json);
}

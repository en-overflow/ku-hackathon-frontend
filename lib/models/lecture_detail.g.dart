// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LectureDetail _$$_LectureDetailFromJson(Map<String, dynamic> json) =>
    _$_LectureDetail(
      classId: json['classId'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      time: json['time'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      level: json['level'] as String,
      price: json['price'] as String,
      like: json['like'] as bool,
      totalCount: json['totalCount'] as int,
      category: json['category'] as String,
      status: json['status'] as String,
      instructorId: json['instructorId'] as String,
      instructorPhoto: json['instructorPhoto'] as String,
      instructorName: json['instructorName'] as String,
      instructorPhone: json['instructorPhone'] as String,
      userId: json['userId'] as String,
      userMoney: json['userMoney'] as String,
    );

Map<String, dynamic> _$$_LectureDetailToJson(_$_LectureDetail instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'photos': instance.photos,
      'time': instance.time,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'level': instance.level,
      'price': instance.price,
      'like': instance.like,
      'totalCount': instance.totalCount,
      'category': instance.category,
      'status': instance.status,
      'instructorId': instance.instructorId,
      'instructorPhoto': instance.instructorPhoto,
      'instructorName': instance.instructorName,
      'instructorPhone': instance.instructorPhone,
      'userId': instance.userId,
      'userMoney': instance.userMoney,
    };

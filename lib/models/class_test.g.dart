// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      userId: json['userId'] as int? ?? 42,
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
      imagePath: json['imagePath'] as String? ?? 'assets/images/profile1.png',
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
      'imagePath': instance.imagePath,
    };

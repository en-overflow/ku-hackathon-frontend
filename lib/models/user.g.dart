// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      nickName: json['nickName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String,
      age: json['age'] as int,
      point: json['point'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickName': instance.nickName,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'age': instance.age,
      'point': instance.point,
    };

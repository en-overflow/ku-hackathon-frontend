// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      money: json['money'] as int,
      userName: json['userName'] as String,
      userPhone: json['userPhone'] as String,
      openClassId: (json['openClassId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      registerClassId: (json['registerClassId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      likeClassId: (json['likeClassId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'money': instance.money,
      'userName': instance.userName,
      'userPhone': instance.userPhone,
      'openClassId': instance.openClassId,
      'registerClassId': instance.registerClassId,
      'likeClassId': instance.likeClassId,
    };

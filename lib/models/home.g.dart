// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      adPotos:
          (json['adPotos'] as List<dynamic>).map((e) => e as String).toList(),
      userMoney: json['userMoney'] as String,
      userName: json['userName'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'adPotos': instance.adPotos,
      'userMoney': instance.userMoney,
      'userName': instance.userName,
      'category': instance.category,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterListItem _$$_RegisterListItemFromJson(Map<String, dynamic> json) =>
    _$_RegisterListItem(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      dueDate: json['dueDate'] as String,
      price: json['price'] as int,
      location: json['location'] as String,
      level: json['level'] as String,
      category: json['category'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_RegisterListItemToJson(_$_RegisterListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate,
      'price': instance.price,
      'location': instance.location,
      'level': instance.level,
      'category': instance.category,
      'status': instance.status,
    };

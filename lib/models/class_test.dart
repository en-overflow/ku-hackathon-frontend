import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_test.freezed.dart';
part 'class_test.g.dart';

@freezed
class Class with _$Class {
  factory Class({
    @Default(42) int userId,
    required int id,
    required String title,
    required bool completed,
    @Default('assets/images/profile1.png') String imagePath,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

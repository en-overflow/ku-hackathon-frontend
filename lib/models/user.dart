import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String userId,
    required int money,
    required String userName,
    required String userPhone,
    required List<String> openClassId,
    required List<String> registerClassId,
    required List<String> likeClassId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

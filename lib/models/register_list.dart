import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_list.freezed.dart';
part 'register_list.g.dart';

@freezed
class RegisterList with _$RegisterList {
  factory RegisterList({
    required List<String> adPotos,
    required String userMoney,
    required String userName,
    required String category, //all,
    //인기강좌 리스트 필요
  }) = _RegisterList;

  factory RegisterList.fromJson(Map<String, dynamic> json) =>
      _$RegisterListFromJson(json);
}

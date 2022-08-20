import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  factory Home({
    required List<String> adPotos,
    required String userMoney,
    required String userName,
    required String category, //all,
    //인기강좌 리스트 필요
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

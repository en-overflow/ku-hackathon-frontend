import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_list_item.freezed.dart';
part 'open_list_item.g.dart';

@freezed
class OpenListItem with _$OpenListItem {
  factory OpenListItem({
    required int id,
    required String title,
    required String description,
    required String dueDate,
    required int price,
    required String location,
    required String level,
    required String category, //all,
    required String status,
    //인기강좌 리스트 필요
  }) = _OpenListItem;

  factory OpenListItem.fromJson(Map<String, dynamic> json) =>
      _$OpenListItemFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenListItem _$OpenListItemFromJson(Map<String, dynamic> json) {
  return _OpenListItem.fromJson(json);
}

/// @nodoc
mixin _$OpenListItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError; //all,
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenListItemCopyWith<OpenListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenListItemCopyWith<$Res> {
  factory $OpenListItemCopyWith(
          OpenListItem value, $Res Function(OpenListItem) then) =
      _$OpenListItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      String dueDate,
      int price,
      String location,
      String level,
      String category,
      String status});
}

/// @nodoc
class _$OpenListItemCopyWithImpl<$Res> implements $OpenListItemCopyWith<$Res> {
  _$OpenListItemCopyWithImpl(this._value, this._then);

  final OpenListItem _value;
  // ignore: unused_field
  final $Res Function(OpenListItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? level = freezed,
    Object? category = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenListItemCopyWith<$Res>
    implements $OpenListItemCopyWith<$Res> {
  factory _$$_OpenListItemCopyWith(
          _$_OpenListItem value, $Res Function(_$_OpenListItem) then) =
      __$$_OpenListItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      String dueDate,
      int price,
      String location,
      String level,
      String category,
      String status});
}

/// @nodoc
class __$$_OpenListItemCopyWithImpl<$Res>
    extends _$OpenListItemCopyWithImpl<$Res>
    implements _$$_OpenListItemCopyWith<$Res> {
  __$$_OpenListItemCopyWithImpl(
      _$_OpenListItem _value, $Res Function(_$_OpenListItem) _then)
      : super(_value, (v) => _then(v as _$_OpenListItem));

  @override
  _$_OpenListItem get _value => super._value as _$_OpenListItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? level = freezed,
    Object? category = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_OpenListItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenListItem implements _OpenListItem {
  _$_OpenListItem(
      {required this.id,
      required this.title,
      required this.description,
      required this.dueDate,
      required this.price,
      required this.location,
      required this.level,
      required this.category,
      required this.status});

  factory _$_OpenListItem.fromJson(Map<String, dynamic> json) =>
      _$$_OpenListItemFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String dueDate;
  @override
  final int price;
  @override
  final String location;
  @override
  final String level;
  @override
  final String category;
//all,
  @override
  final String status;

  @override
  String toString() {
    return 'OpenListItem(id: $id, title: $title, description: $description, dueDate: $dueDate, price: $price, location: $location, level: $level, category: $category, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenListItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_OpenListItemCopyWith<_$_OpenListItem> get copyWith =>
      __$$_OpenListItemCopyWithImpl<_$_OpenListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenListItemToJson(
      this,
    );
  }
}

abstract class _OpenListItem implements OpenListItem {
  factory _OpenListItem(
      {required final int id,
      required final String title,
      required final String description,
      required final String dueDate,
      required final int price,
      required final String location,
      required final String level,
      required final String category,
      required final String status}) = _$_OpenListItem;

  factory _OpenListItem.fromJson(Map<String, dynamic> json) =
      _$_OpenListItem.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get dueDate;
  @override
  int get price;
  @override
  String get location;
  @override
  String get level;
  @override
  String get category;
  @override //all,
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_OpenListItemCopyWith<_$_OpenListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

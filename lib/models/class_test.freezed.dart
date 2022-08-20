// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res>;
  $Res call(
      {int userId, int id, String title, bool completed, String imagePath});
}

/// @nodoc
class _$ClassCopyWithImpl<$Res> implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  final Class _value;
  // ignore: unused_field
  final $Res Function(Class) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {int userId, int id, String title, bool completed, String imagePath});
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, (v) => _then(v as _$_Class));

  @override
  _$_Class get _value => super._value as _$_Class;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_Class(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Class implements _Class {
  _$_Class(
      {this.userId = 42,
      required this.id,
      required this.title,
      required this.completed,
      this.imagePath = 'assets/images/profile1.png'});

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'Class(userId: $userId, id: $id, title: $title, completed: $completed, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class implements Class {
  factory _Class(
      {final int userId,
      required final int id,
      required final String title,
      required final bool completed,
      final String imagePath}) = _$_Class;

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  bool get completed;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  List<String> get adPotos => throw _privateConstructorUsedError;
  String get userMoney => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res>;
  $Res call(
      {List<String> adPotos,
      String userMoney,
      String userName,
      String category});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res> implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  final Home _value;
  // ignore: unused_field
  final $Res Function(Home) _then;

  @override
  $Res call({
    Object? adPotos = freezed,
    Object? userMoney = freezed,
    Object? userName = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      adPotos: adPotos == freezed
          ? _value.adPotos
          : adPotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userMoney: userMoney == freezed
          ? _value.userMoney
          : userMoney // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> adPotos,
      String userMoney,
      String userName,
      String category});
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, (v) => _then(v as _$_Home));

  @override
  _$_Home get _value => super._value as _$_Home;

  @override
  $Res call({
    Object? adPotos = freezed,
    Object? userMoney = freezed,
    Object? userName = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Home(
      adPotos: adPotos == freezed
          ? _value._adPotos
          : adPotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userMoney: userMoney == freezed
          ? _value.userMoney
          : userMoney // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Home implements _Home {
  _$_Home(
      {required final List<String> adPotos,
      required this.userMoney,
      required this.userName,
      required this.category})
      : _adPotos = adPotos;

  factory _$_Home.fromJson(Map<String, dynamic> json) => _$$_HomeFromJson(json);

  final List<String> _adPotos;
  @override
  List<String> get adPotos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adPotos);
  }

  @override
  final String userMoney;
  @override
  final String userName;
  @override
  final String category;

  @override
  String toString() {
    return 'Home(adPotos: $adPotos, userMoney: $userMoney, userName: $userName, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            const DeepCollectionEquality().equals(other._adPotos, _adPotos) &&
            const DeepCollectionEquality().equals(other.userMoney, userMoney) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_adPotos),
      const DeepCollectionEquality().hash(userMoney),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  factory _Home(
      {required final List<String> adPotos,
      required final String userMoney,
      required final String userName,
      required final String category}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override
  List<String> get adPotos;
  @override
  String get userMoney;
  @override
  String get userName;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}

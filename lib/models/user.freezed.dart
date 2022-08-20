// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get userId => throw _privateConstructorUsedError;
  int get money => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userPhone => throw _privateConstructorUsedError;
  List<String> get openClassId => throw _privateConstructorUsedError;
  List<String> get registerClassId => throw _privateConstructorUsedError;
  List<String> get likeClassId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      int money,
      String userName,
      String userPhone,
      List<String> openClassId,
      List<String> registerClassId,
      List<String> likeClassId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? money = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? openClassId = freezed,
    Object? registerClassId = freezed,
    Object? likeClassId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: userPhone == freezed
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      openClassId: openClassId == freezed
          ? _value.openClassId
          : openClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      registerClassId: registerClassId == freezed
          ? _value.registerClassId
          : registerClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeClassId: likeClassId == freezed
          ? _value.likeClassId
          : likeClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      int money,
      String userName,
      String userPhone,
      List<String> openClassId,
      List<String> registerClassId,
      List<String> likeClassId});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? userId = freezed,
    Object? money = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? openClassId = freezed,
    Object? registerClassId = freezed,
    Object? likeClassId = freezed,
  }) {
    return _then(_$_User(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: userPhone == freezed
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      openClassId: openClassId == freezed
          ? _value._openClassId
          : openClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      registerClassId: registerClassId == freezed
          ? _value._registerClassId
          : registerClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeClassId: likeClassId == freezed
          ? _value._likeClassId
          : likeClassId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.userId,
      required this.money,
      required this.userName,
      required this.userPhone,
      required final List<String> openClassId,
      required final List<String> registerClassId,
      required final List<String> likeClassId})
      : _openClassId = openClassId,
        _registerClassId = registerClassId,
        _likeClassId = likeClassId;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String userId;
  @override
  final int money;
  @override
  final String userName;
  @override
  final String userPhone;
  final List<String> _openClassId;
  @override
  List<String> get openClassId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openClassId);
  }

  final List<String> _registerClassId;
  @override
  List<String> get registerClassId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_registerClassId);
  }

  final List<String> _likeClassId;
  @override
  List<String> get likeClassId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeClassId);
  }

  @override
  String toString() {
    return 'User(userId: $userId, money: $money, userName: $userName, userPhone: $userPhone, openClassId: $openClassId, registerClassId: $registerClassId, likeClassId: $likeClassId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.money, money) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userPhone, userPhone) &&
            const DeepCollectionEquality()
                .equals(other._openClassId, _openClassId) &&
            const DeepCollectionEquality()
                .equals(other._registerClassId, _registerClassId) &&
            const DeepCollectionEquality()
                .equals(other._likeClassId, _likeClassId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(money),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userPhone),
      const DeepCollectionEquality().hash(_openClassId),
      const DeepCollectionEquality().hash(_registerClassId),
      const DeepCollectionEquality().hash(_likeClassId));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String userId,
      required final int money,
      required final String userName,
      required final String userPhone,
      required final List<String> openClassId,
      required final List<String> registerClassId,
      required final List<String> likeClassId}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get userId;
  @override
  int get money;
  @override
  String get userName;
  @override
  String get userPhone;
  @override
  List<String> get openClassId;
  @override
  List<String> get registerClassId;
  @override
  List<String> get likeClassId;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

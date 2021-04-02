// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

// ignore: unused_element
  _Todo call(
      {@required int id,
      @required String title,
      @required bool isDone,
      DateTime rimitDateTime}) {
    return _Todo(
      id: id,
      title: title,
      isDone: isDone,
      rimitDateTime: rimitDateTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  int get id;
  String get title;
  bool get isDone;
  DateTime get rimitDateTime;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({int id, String title, bool isDone, DateTime rimitDateTime});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isDone = freezed,
    Object rimitDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
      rimitDateTime: rimitDateTime == freezed
          ? _value.rimitDateTime
          : rimitDateTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, bool isDone, DateTime rimitDateTime});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isDone = freezed,
    Object rimitDateTime = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
      rimitDateTime: rimitDateTime == freezed
          ? _value.rimitDateTime
          : rimitDateTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_Todo extends _Todo {
  _$_Todo(
      {@required this.id,
      @required this.title,
      @required this.isDone,
      this.rimitDateTime})
      : assert(id != null),
        assert(title != null),
        assert(isDone != null),
        super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final bool isDone;
  @override
  final DateTime rimitDateTime;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, isDone: $isDone, rimitDateTime: $rimitDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)) &&
            (identical(other.rimitDateTime, rimitDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.rimitDateTime, rimitDateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isDone) ^
      const DeepCollectionEquality().hash(rimitDateTime);

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo extends Todo {
  _Todo._() : super._();
  factory _Todo(
      {@required int id,
      @required String title,
      @required bool isDone,
      DateTime rimitDateTime}) = _$_Todo;

  @override
  int get id;
  @override
  String get title;
  @override
  bool get isDone;
  @override
  DateTime get rimitDateTime;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith;
}

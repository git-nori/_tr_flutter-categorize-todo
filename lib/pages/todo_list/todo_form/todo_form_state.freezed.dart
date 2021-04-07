// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoFormStateTearOff {
  const _$TodoFormStateTearOff();

// ignore: unused_element
  _TodoFormState call(
      {String title = '',
      DateTime limitedDateTime,
      bool isSelectedTime = false}) {
    return _TodoFormState(
      title: title,
      limitedDateTime: limitedDateTime,
      isSelectedTime: isSelectedTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoFormState = _$TodoFormStateTearOff();

/// @nodoc
mixin _$TodoFormState {
  String get title;
  DateTime get limitedDateTime;
  bool get isSelectedTime;

  @JsonKey(ignore: true)
  $TodoFormStateCopyWith<TodoFormState> get copyWith;
}

/// @nodoc
abstract class $TodoFormStateCopyWith<$Res> {
  factory $TodoFormStateCopyWith(
          TodoFormState value, $Res Function(TodoFormState) then) =
      _$TodoFormStateCopyWithImpl<$Res>;
  $Res call({String title, DateTime limitedDateTime, bool isSelectedTime});
}

/// @nodoc
class _$TodoFormStateCopyWithImpl<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  _$TodoFormStateCopyWithImpl(this._value, this._then);

  final TodoFormState _value;
  // ignore: unused_field
  final $Res Function(TodoFormState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object limitedDateTime = freezed,
    Object isSelectedTime = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      limitedDateTime: limitedDateTime == freezed
          ? _value.limitedDateTime
          : limitedDateTime as DateTime,
      isSelectedTime: isSelectedTime == freezed
          ? _value.isSelectedTime
          : isSelectedTime as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoFormStateCopyWith<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  factory _$TodoFormStateCopyWith(
          _TodoFormState value, $Res Function(_TodoFormState) then) =
      __$TodoFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, DateTime limitedDateTime, bool isSelectedTime});
}

/// @nodoc
class __$TodoFormStateCopyWithImpl<$Res>
    extends _$TodoFormStateCopyWithImpl<$Res>
    implements _$TodoFormStateCopyWith<$Res> {
  __$TodoFormStateCopyWithImpl(
      _TodoFormState _value, $Res Function(_TodoFormState) _then)
      : super(_value, (v) => _then(v as _TodoFormState));

  @override
  _TodoFormState get _value => super._value as _TodoFormState;

  @override
  $Res call({
    Object title = freezed,
    Object limitedDateTime = freezed,
    Object isSelectedTime = freezed,
  }) {
    return _then(_TodoFormState(
      title: title == freezed ? _value.title : title as String,
      limitedDateTime: limitedDateTime == freezed
          ? _value.limitedDateTime
          : limitedDateTime as DateTime,
      isSelectedTime: isSelectedTime == freezed
          ? _value.isSelectedTime
          : isSelectedTime as bool,
    ));
  }
}

/// @nodoc
class _$_TodoFormState extends _TodoFormState {
  _$_TodoFormState(
      {this.title = '', this.limitedDateTime, this.isSelectedTime = false})
      : assert(title != null),
        assert(isSelectedTime != null),
        super._();

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  final DateTime limitedDateTime;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelectedTime;

  bool _didformatedDateTime = false;
  String _formatedDateTime;

  @override
  String get formatedDateTime {
    if (_didformatedDateTime == false) {
      _didformatedDateTime = true;
      _formatedDateTime = isSelectedTime
          ? DateFormat('M月dd日(E) H:mm', 'ja_JP').format(limitedDateTime)
          : DateFormat('M月dd日(E)', 'ja_JP').format(limitedDateTime);
    }
    return _formatedDateTime;
  }

  @override
  String toString() {
    return 'TodoFormState(title: $title, limitedDateTime: $limitedDateTime, isSelectedTime: $isSelectedTime, formatedDateTime: $formatedDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.limitedDateTime, limitedDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.limitedDateTime, limitedDateTime)) &&
            (identical(other.isSelectedTime, isSelectedTime) ||
                const DeepCollectionEquality()
                    .equals(other.isSelectedTime, isSelectedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(limitedDateTime) ^
      const DeepCollectionEquality().hash(isSelectedTime);

  @JsonKey(ignore: true)
  @override
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith =>
      __$TodoFormStateCopyWithImpl<_TodoFormState>(this, _$identity);
}

abstract class _TodoFormState extends TodoFormState {
  _TodoFormState._() : super._();
  factory _TodoFormState(
      {String title,
      DateTime limitedDateTime,
      bool isSelectedTime}) = _$_TodoFormState;

  @override
  String get title;
  @override
  DateTime get limitedDateTime;
  @override
  bool get isSelectedTime;
  @override
  @JsonKey(ignore: true)
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith;
}

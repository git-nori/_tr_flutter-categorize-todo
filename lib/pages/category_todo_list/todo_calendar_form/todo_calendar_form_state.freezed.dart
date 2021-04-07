// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_calendar_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoCalendarFormStateTearOff {
  const _$TodoCalendarFormStateTearOff();

// ignore: unused_element
  _TodoCalendarFormState call(
      {@required DateTime limitedDateTime,
      @required bool isExistSetting,
      @required bool isSelectedTime}) {
    return _TodoCalendarFormState(
      limitedDateTime: limitedDateTime,
      isExistSetting: isExistSetting,
      isSelectedTime: isSelectedTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoCalendarFormState = _$TodoCalendarFormStateTearOff();

/// @nodoc
mixin _$TodoCalendarFormState {
  DateTime get limitedDateTime;
  bool get isExistSetting;
  bool get isSelectedTime;

  @JsonKey(ignore: true)
  $TodoCalendarFormStateCopyWith<TodoCalendarFormState> get copyWith;
}

/// @nodoc
abstract class $TodoCalendarFormStateCopyWith<$Res> {
  factory $TodoCalendarFormStateCopyWith(TodoCalendarFormState value,
          $Res Function(TodoCalendarFormState) then) =
      _$TodoCalendarFormStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime limitedDateTime, bool isExistSetting, bool isSelectedTime});
}

/// @nodoc
class _$TodoCalendarFormStateCopyWithImpl<$Res>
    implements $TodoCalendarFormStateCopyWith<$Res> {
  _$TodoCalendarFormStateCopyWithImpl(this._value, this._then);

  final TodoCalendarFormState _value;
  // ignore: unused_field
  final $Res Function(TodoCalendarFormState) _then;

  @override
  $Res call({
    Object limitedDateTime = freezed,
    Object isExistSetting = freezed,
    Object isSelectedTime = freezed,
  }) {
    return _then(_value.copyWith(
      limitedDateTime: limitedDateTime == freezed
          ? _value.limitedDateTime
          : limitedDateTime as DateTime,
      isExistSetting: isExistSetting == freezed
          ? _value.isExistSetting
          : isExistSetting as bool,
      isSelectedTime: isSelectedTime == freezed
          ? _value.isSelectedTime
          : isSelectedTime as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoCalendarFormStateCopyWith<$Res>
    implements $TodoCalendarFormStateCopyWith<$Res> {
  factory _$TodoCalendarFormStateCopyWith(_TodoCalendarFormState value,
          $Res Function(_TodoCalendarFormState) then) =
      __$TodoCalendarFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime limitedDateTime, bool isExistSetting, bool isSelectedTime});
}

/// @nodoc
class __$TodoCalendarFormStateCopyWithImpl<$Res>
    extends _$TodoCalendarFormStateCopyWithImpl<$Res>
    implements _$TodoCalendarFormStateCopyWith<$Res> {
  __$TodoCalendarFormStateCopyWithImpl(_TodoCalendarFormState _value,
      $Res Function(_TodoCalendarFormState) _then)
      : super(_value, (v) => _then(v as _TodoCalendarFormState));

  @override
  _TodoCalendarFormState get _value => super._value as _TodoCalendarFormState;

  @override
  $Res call({
    Object limitedDateTime = freezed,
    Object isExistSetting = freezed,
    Object isSelectedTime = freezed,
  }) {
    return _then(_TodoCalendarFormState(
      limitedDateTime: limitedDateTime == freezed
          ? _value.limitedDateTime
          : limitedDateTime as DateTime,
      isExistSetting: isExistSetting == freezed
          ? _value.isExistSetting
          : isExistSetting as bool,
      isSelectedTime: isSelectedTime == freezed
          ? _value.isSelectedTime
          : isSelectedTime as bool,
    ));
  }
}

/// @nodoc
class _$_TodoCalendarFormState extends _TodoCalendarFormState {
  _$_TodoCalendarFormState(
      {@required this.limitedDateTime,
      @required this.isExistSetting,
      @required this.isSelectedTime})
      : assert(limitedDateTime != null),
        assert(isExistSetting != null),
        assert(isSelectedTime != null),
        super._();

  @override
  final DateTime limitedDateTime;
  @override
  final bool isExistSetting;
  @override
  final bool isSelectedTime;

  @override
  String toString() {
    return 'TodoCalendarFormState(limitedDateTime: $limitedDateTime, isExistSetting: $isExistSetting, isSelectedTime: $isSelectedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoCalendarFormState &&
            (identical(other.limitedDateTime, limitedDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.limitedDateTime, limitedDateTime)) &&
            (identical(other.isExistSetting, isExistSetting) ||
                const DeepCollectionEquality()
                    .equals(other.isExistSetting, isExistSetting)) &&
            (identical(other.isSelectedTime, isSelectedTime) ||
                const DeepCollectionEquality()
                    .equals(other.isSelectedTime, isSelectedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(limitedDateTime) ^
      const DeepCollectionEquality().hash(isExistSetting) ^
      const DeepCollectionEquality().hash(isSelectedTime);

  @JsonKey(ignore: true)
  @override
  _$TodoCalendarFormStateCopyWith<_TodoCalendarFormState> get copyWith =>
      __$TodoCalendarFormStateCopyWithImpl<_TodoCalendarFormState>(
          this, _$identity);
}

abstract class _TodoCalendarFormState extends TodoCalendarFormState {
  _TodoCalendarFormState._() : super._();
  factory _TodoCalendarFormState(
      {@required DateTime limitedDateTime,
      @required bool isExistSetting,
      @required bool isSelectedTime}) = _$_TodoCalendarFormState;

  @override
  DateTime get limitedDateTime;
  @override
  bool get isExistSetting;
  @override
  bool get isSelectedTime;
  @override
  @JsonKey(ignore: true)
  _$TodoCalendarFormStateCopyWith<_TodoCalendarFormState> get copyWith;
}

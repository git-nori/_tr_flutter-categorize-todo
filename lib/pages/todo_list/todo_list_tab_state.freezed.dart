// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_list_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoListTabStateTearOff {
  const _$TodoListTabStateTearOff();

// ignore: unused_element
  _TodoListTabState call({int currentIndex = 0}) {
    return _TodoListTabState(
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoListTabState = _$TodoListTabStateTearOff();

/// @nodoc
mixin _$TodoListTabState {
  int get currentIndex;

  @JsonKey(ignore: true)
  $TodoListTabStateCopyWith<TodoListTabState> get copyWith;
}

/// @nodoc
abstract class $TodoListTabStateCopyWith<$Res> {
  factory $TodoListTabStateCopyWith(
          TodoListTabState value, $Res Function(TodoListTabState) then) =
      _$TodoListTabStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$TodoListTabStateCopyWithImpl<$Res>
    implements $TodoListTabStateCopyWith<$Res> {
  _$TodoListTabStateCopyWithImpl(this._value, this._then);

  final TodoListTabState _value;
  // ignore: unused_field
  final $Res Function(TodoListTabState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$TodoListTabStateCopyWith<$Res>
    implements $TodoListTabStateCopyWith<$Res> {
  factory _$TodoListTabStateCopyWith(
          _TodoListTabState value, $Res Function(_TodoListTabState) then) =
      __$TodoListTabStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$TodoListTabStateCopyWithImpl<$Res>
    extends _$TodoListTabStateCopyWithImpl<$Res>
    implements _$TodoListTabStateCopyWith<$Res> {
  __$TodoListTabStateCopyWithImpl(
      _TodoListTabState _value, $Res Function(_TodoListTabState) _then)
      : super(_value, (v) => _then(v as _TodoListTabState));

  @override
  _TodoListTabState get _value => super._value as _TodoListTabState;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_TodoListTabState(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_TodoListTabState extends _TodoListTabState {
  _$_TodoListTabState({this.currentIndex = 0})
      : assert(currentIndex != null),
        super._();

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'TodoListTabState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoListTabState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$TodoListTabStateCopyWith<_TodoListTabState> get copyWith =>
      __$TodoListTabStateCopyWithImpl<_TodoListTabState>(this, _$identity);
}

abstract class _TodoListTabState extends TodoListTabState {
  _TodoListTabState._() : super._();
  factory _TodoListTabState({int currentIndex}) = _$_TodoListTabState;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$TodoListTabStateCopyWith<_TodoListTabState> get copyWith;
}

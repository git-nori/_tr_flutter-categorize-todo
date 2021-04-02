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
  _TodoListTabState call({int currentIndex = 0, TabController tabController}) {
    return _TodoListTabState(
      currentIndex: currentIndex,
      tabController: tabController,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoListTabState = _$TodoListTabStateTearOff();

/// @nodoc
mixin _$TodoListTabState {
  int get currentIndex;
  TabController get tabController;

  @JsonKey(ignore: true)
  $TodoListTabStateCopyWith<TodoListTabState> get copyWith;
}

/// @nodoc
abstract class $TodoListTabStateCopyWith<$Res> {
  factory $TodoListTabStateCopyWith(
          TodoListTabState value, $Res Function(TodoListTabState) then) =
      _$TodoListTabStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, TabController tabController});
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
    Object tabController = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      tabController: tabController == freezed
          ? _value.tabController
          : tabController as TabController,
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
  $Res call({int currentIndex, TabController tabController});
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
    Object tabController = freezed,
  }) {
    return _then(_TodoListTabState(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      tabController: tabController == freezed
          ? _value.tabController
          : tabController as TabController,
    ));
  }
}

/// @nodoc
class _$_TodoListTabState extends _TodoListTabState {
  _$_TodoListTabState({this.currentIndex = 0, this.tabController})
      : assert(currentIndex != null),
        super._();

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;
  @override
  final TabController tabController;

  @override
  String toString() {
    return 'TodoListTabState(currentIndex: $currentIndex, tabController: $tabController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoListTabState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.tabController, tabController) ||
                const DeepCollectionEquality()
                    .equals(other.tabController, tabController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(tabController);

  @JsonKey(ignore: true)
  @override
  _$TodoListTabStateCopyWith<_TodoListTabState> get copyWith =>
      __$TodoListTabStateCopyWithImpl<_TodoListTabState>(this, _$identity);
}

abstract class _TodoListTabState extends TodoListTabState {
  _TodoListTabState._() : super._();
  factory _TodoListTabState({int currentIndex, TabController tabController}) =
      _$_TodoListTabState;

  @override
  int get currentIndex;
  @override
  TabController get tabController;
  @override
  @JsonKey(ignore: true)
  _$TodoListTabStateCopyWith<_TodoListTabState> get copyWith;
}

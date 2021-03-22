// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TabsStateTearOff {
  const _$TabsStateTearOff();

// ignore: unused_element
  _TabsState call({List<Category> categories = const <Category>[]}) {
    return _TabsState(
      categories: categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TabsState = _$TabsStateTearOff();

/// @nodoc
mixin _$TabsState {
  List<Category> get categories;

  @JsonKey(ignore: true)
  $TabsStateCopyWith<TabsState> get copyWith;
}

/// @nodoc
abstract class $TabsStateCopyWith<$Res> {
  factory $TabsStateCopyWith(TabsState value, $Res Function(TabsState) then) =
      _$TabsStateCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class _$TabsStateCopyWithImpl<$Res> implements $TabsStateCopyWith<$Res> {
  _$TabsStateCopyWithImpl(this._value, this._then);

  final TabsState _value;
  // ignore: unused_field
  final $Res Function(TabsState) _then;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$TabsStateCopyWith<$Res> implements $TabsStateCopyWith<$Res> {
  factory _$TabsStateCopyWith(
          _TabsState value, $Res Function(_TabsState) then) =
      __$TabsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categories});
}

/// @nodoc
class __$TabsStateCopyWithImpl<$Res> extends _$TabsStateCopyWithImpl<$Res>
    implements _$TabsStateCopyWith<$Res> {
  __$TabsStateCopyWithImpl(_TabsState _value, $Res Function(_TabsState) _then)
      : super(_value, (v) => _then(v as _TabsState));

  @override
  _TabsState get _value => super._value as _TabsState;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_TabsState(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_TabsState extends _TabsState {
  _$_TabsState({this.categories = const <Category>[]})
      : assert(categories != null),
        super._();

  @JsonKey(defaultValue: const <Category>[])
  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'TabsState(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabsState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$TabsStateCopyWith<_TabsState> get copyWith =>
      __$TabsStateCopyWithImpl<_TabsState>(this, _$identity);
}

abstract class _TabsState extends TabsState {
  _TabsState._() : super._();
  factory _TabsState({List<Category> categories}) = _$_TabsState;

  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$TabsStateCopyWith<_TabsState> get copyWith;
}

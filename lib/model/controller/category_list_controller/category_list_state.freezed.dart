// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryListStateTearOff {
  const _$CategoryListStateTearOff();

// ignore: unused_element
  _CategoryListState call({List<Category> categoryList = const <Category>[]}) {
    return _CategoryListState(
      categoryList: categoryList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryListState = _$CategoryListStateTearOff();

/// @nodoc
mixin _$CategoryListState {
  List<Category> get categoryList;

  @JsonKey(ignore: true)
  $CategoryListStateCopyWith<CategoryListState> get copyWith;
}

/// @nodoc
abstract class $CategoryListStateCopyWith<$Res> {
  factory $CategoryListStateCopyWith(
          CategoryListState value, $Res Function(CategoryListState) then) =
      _$CategoryListStateCopyWithImpl<$Res>;
  $Res call({List<Category> categoryList});
}

/// @nodoc
class _$CategoryListStateCopyWithImpl<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  _$CategoryListStateCopyWithImpl(this._value, this._then);

  final CategoryListState _value;
  // ignore: unused_field
  final $Res Function(CategoryListState) _then;

  @override
  $Res call({
    Object categoryList = freezed,
  }) {
    return _then(_value.copyWith(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryListStateCopyWith<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  factory _$CategoryListStateCopyWith(
          _CategoryListState value, $Res Function(_CategoryListState) then) =
      __$CategoryListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categoryList});
}

/// @nodoc
class __$CategoryListStateCopyWithImpl<$Res>
    extends _$CategoryListStateCopyWithImpl<$Res>
    implements _$CategoryListStateCopyWith<$Res> {
  __$CategoryListStateCopyWithImpl(
      _CategoryListState _value, $Res Function(_CategoryListState) _then)
      : super(_value, (v) => _then(v as _CategoryListState));

  @override
  _CategoryListState get _value => super._value as _CategoryListState;

  @override
  $Res call({
    Object categoryList = freezed,
  }) {
    return _then(_CategoryListState(
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList as List<Category>,
    ));
  }
}

/// @nodoc
class _$_CategoryListState extends _CategoryListState {
  _$_CategoryListState({this.categoryList = const <Category>[]})
      : assert(categoryList != null),
        super._();

  @JsonKey(defaultValue: const <Category>[])
  @override
  final List<Category> categoryList;

  bool _didallCategoryTitle = false;
  List<String> _allCategoryTitle;

  @override
  List<String> get allCategoryTitle {
    if (_didallCategoryTitle == false) {
      _didallCategoryTitle = true;
      _allCategoryTitle = categoryList.map((e) => e.title).toList();
    }
    return _allCategoryTitle;
  }

  @override
  String toString() {
    return 'CategoryListState(categoryList: $categoryList, allCategoryTitle: $allCategoryTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryListState &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality()
                    .equals(other.categoryList, categoryList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryList);

  @JsonKey(ignore: true)
  @override
  _$CategoryListStateCopyWith<_CategoryListState> get copyWith =>
      __$CategoryListStateCopyWithImpl<_CategoryListState>(this, _$identity);
}

abstract class _CategoryListState extends CategoryListState {
  _CategoryListState._() : super._();
  factory _CategoryListState({List<Category> categoryList}) =
      _$_CategoryListState;

  @override
  List<Category> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$CategoryListStateCopyWith<_CategoryListState> get copyWith;
}
